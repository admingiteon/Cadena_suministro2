#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: vw_largo_plazo_trazabilidad {
  derived_table: {
    sql: SELECT 1 as id_Concepto,
                'PLAN DE LA DEMANDA' as Concepto,
                concat('00000000000',ID_de_Producto__IBP_) as SKU,
                CONCAT(CAST(EXTRACT(YEAR from fecha ) as string),'-', LPAD(CAST(EXTRACT(MONTH from fecha ) as string),2,'0') ) as PeriodoNum,
                CONCAT(CAST(EXTRACT(YEAR from fecha ) as string),'-', LPAD(CAST(EXTRACT(MONTH from fecha ) as string),2,'0') ) as Periodo,
                sum(Cantidad) as Cantidad
          FROM `psa-sga-dfn-qa.reporting_ecc_mx.largo_plazo_completo`
         where ID_de_Producto__IBP_>=4000000
         group by 1,2,3,4,5

         union all

        SELECT 2 as id_Concepto,
               'PLAN DE LA DEMANDA SIMULADO' as Concepto,
               SKU as sku,
               periodoproy as PeriodoNum,
               periodoproy as Periodo,
               sum(CantidadMes*1.16) as Cantidad
          FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cad_sum_cap_web_vert`
       where substring(sku,12,2)='40'
       group by 1,2,3,4,5

        union all

     SELECT 3 id_Concepto,
             'VARIACION PLAN DE LA DEMANDA' as Concepto,
              calculado.ID_de_Producto__IBP_,
              CONCAT(CAST(EXTRACT(YEAR from calculado.fecha ) as string),'-', LPAD(CAST(EXTRACT(MONTH from calculado.fecha ) as string),2,'0') ) as PeriodoNum,
              CONCAT(CAST(EXTRACT(YEAR from calculado.fecha ) as string),'-', LPAD(CAST(EXTRACT(MONTH from calculado.fecha ) as string),2,'0') ) as Periodo,
              (sum(calculado.Cantidad)-sum(CantidadMes*1.16)) as Cantidad
       FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cad_sum_cap_web_vert` As simulado
       left outer join `psa-sga-dfn-qa.reporting_ecc_mx.largo_plazo_completo` As calculado
         on concat(concat('00000000000',ID_de_Producto__IBP_),
            CONCAT(CAST(EXTRACT(YEAR from calculado.fecha ) as string),'-', LPAD(CAST(EXTRACT(MONTH from calculado.fecha ) as string),2,'0') ))
          = concat(simulado.sku,simulado.periodoproy)
      where substring(simulado.sku,12,2)='40'
        and calculado.ID_de_Producto__IBP_>=4000000
     group by 1,2,3,4,5


      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id_concepto {
    type: number
    sql: ${TABLE}.id_Concepto ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.Concepto ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: periodo_num {
    type: string
    sql: ${TABLE}.PeriodoNum ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }



  dimension: cantidad {
    type: number
    value_format:"#.00;(#.00)"
    sql: ${TABLE}.Cantidad ;;
  }

  set: detail {
    fields: [
      id_concepto,
      concepto,
      sku,
      periodo_num,
      periodo,
      cantidad
    ]
  }
}
