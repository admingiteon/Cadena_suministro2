#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: vw_tab_lar_pla_traz_ren1 {
  derived_table: {
    sql: SELECT 1 as id_Concepto
                   ,'PLAN DE LA DEMANDA' as Concepto
                   ,concat('00000000000',ID_de_Producto__IBP_) as SKU
                   ,CONCAT(CAST(EXTRACT(YEAR from fecha ) as string),'-', LPAD(CAST(EXTRACT(MONTH from fecha ) as string),2,'0') ) as PeriodoNum
                   ,CONCAT(CAST(EXTRACT(YEAR from fecha ) as string),'-', LPAD(CAST(EXTRACT(MONTH from fecha ) as string),2,'0') ) as Periodo
                   ,sum(Cantidad) as Cantidad
             FROM `psa-sga-dfn-qa.reporting_ecc_mx.largo_plazo_completo`
             where ID_de_Producto__IBP_>=4000000 and
                   CONCAT(CAST(EXTRACT(YEAR from fecha ) as string),'-', LPAD(CAST(EXTRACT(MONTH from fecha ) as string),2,'0') )='2023-06'
             group by 1,2,3,4,5 ; ;;
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
    sql: ${TABLE}.SKU ;;
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
