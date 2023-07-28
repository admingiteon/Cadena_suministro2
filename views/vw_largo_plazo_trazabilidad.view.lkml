#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: vw_largo_plazo_trazabilidad {
  derived_table: {
    sql: SELECT * FROM `psa-psa-cadena-qa.reporting_ecc_mx.vw_largo_plazo_trazabilidad`;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: tipomaterial {
    type: string
    sql: ${TABLE}.tipomaterial ;;
  }

  dimension: um {
    type: string
    sql: ${TABLE}.um ;;
  }

  dimension: grupoarticulo {
    type: string
    sql: ${TABLE}.grupoarticulo ;;
  }

  dimension: grupoarticuloexterno {
    type: string
    sql: ${TABLE}.grupoarticuloexterno ;;
  }

  dimension: claveidioma {
    type: string
    sql: ${TABLE}.claveidioma ;;
  }

  dimension: articulodescribe {
    type: string
    sql: ${TABLE}.articulodescribe ;;
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

  dimension: drill01 {
    type: string
    sql: ${TABLE}.drill01 ;;
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
        tipomaterial,
  um,
  grupoarticulo,
  grupoarticuloexterno,
  claveidioma,
  articulodescribe,
  id_concepto,
  concepto,
  sku,
  drill01,
  periodo_num,
  periodo,
  cantidad
    ]
  }
}
