view: vw_tablero_largo_plazo_trazab_renglon_08 {
  sql_table_name: `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_08` ;;

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: f0_ {
    type: string
    sql: ${TABLE}.f0_ ;;
  }
  dimension: id_concepto {
    type: number
    sql: ${TABLE}.Id_Concepto ;;
  }
  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }
  dimension: periodo_num {
    type: string
    sql: ${TABLE}.PeriodoNum ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
  }
}
