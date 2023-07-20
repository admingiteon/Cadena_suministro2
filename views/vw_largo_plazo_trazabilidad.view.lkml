#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: vw_largo_plazo_trazabilidad {
  derived_table: {
    sql: SELECT 1 id_Concepto,
             'PLAN DE LA DEMANDA' as Concepto,
              ListaSKU.sku,
              PeriodoNum,
              Periodo,
              sum(Cantidad) as Cantidad
         FROM psa-sga-dfn-qa.reporting_ecc_mx.tb_cat_sku As ListaSKU
         left outer join
              `psa-sga-dfn-qa.reporting_ecc_mx.pla_de_demanda_01` as PlanDemanda
           on  ListaSKU.sku=concat('00000000000',PlanDemanda.ID_de_Producto__IBP_)
         where ID_de_Producto__IBP_>=4000000
         group by 1,2,3,4,5

      union all

      SELECT 2 id_Concepto,
             'PLAN DE LA DEMANDA SIMULADO' as Concepto,
              ListaSKU.sku,
              PeriodoNum,
              Periodo,
              0 as Cantidad
         FROM psa-sga-dfn-qa.reporting_ecc_mx.tb_cat_sku As ListaSKU
         left outer join
              `psa-sga-dfn-qa.reporting_ecc_mx.pla_de_demanda_01` as PlanDemanda
           on  ListaSKU.sku=concat('00000000000',PlanDemanda.ID_de_Producto__IBP_)
        where ID_de_Producto__IBP_>=4000000
        group by 1,2,3,4,5

      union all

      SELECT 3 id_Concepto,
             'VARIACION PLAN DE LA DEMANDA' as Concepto,
              ListaSKU.sku,
              PeriodoNum,
              Periodo,
              0 as Cantidad
          FROM psa-sga-dfn-qa.reporting_ecc_mx.tb_cat_sku As ListaSKU
         left outer join
              `psa-sga-dfn-qa.reporting_ecc_mx.pla_de_demanda_01` as PlanDemanda
           on  ListaSKU.sku=concat('00000000000',PlanDemanda.ID_de_Producto__IBP_)
         where ID_de_Producto__IBP_>=4000000
         group by 1,2,3,4,5 ;;
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
