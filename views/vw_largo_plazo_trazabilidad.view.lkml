view: vw_largo_plazo_trazabilidad {
  sql_table_name: `psa-psa-cadena-qa.reporting_ecc_mx.vw_largo_plazo_trazabilidad` ;;

  dimension: articulodescribe {
    type: string
    sql: ${TABLE}.articulodescribe ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }
  dimension: claveidioma {
    type: string
    sql: ${TABLE}.claveidioma ;;
  }
  dimension: concepto {
    type: string
    sql: ${TABLE}.Concepto ;;
  }
  dimension: grupoarticulo {
    type: string
    sql: ${TABLE}.grupoarticulo ;;
  }
  dimension: grupoarticuloexterno {
    type: string
    sql: ${TABLE}.grupoarticuloexterno ;;
  }
  dimension: id_concepto {
    type: number
    sql: ${TABLE}.id_Concepto ;;
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
    sql: ${TABLE}.SKU ;;
  }
  dimension: tipomaterial {
    type: string
    sql: ${TABLE}.tipomaterial ;;
  }
  dimension: um {
    type: string
    sql: ${TABLE}.um ;;
  }
  measure: count {
    type: count
  }
}
