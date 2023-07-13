#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: val_vw_datos_inspeccion {
  derived_table: {
    sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_acc_datos_inspeccion`  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: num_lote_inspeccion {
    type: string
    sql: ${TABLE}.num_lote_inspeccion ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }

  dimension: lote {
    type: string
    sql: ${TABLE}.lote ;;
  }

  dimension: fecha_creacion_lote_inspeccion {
    type: date
    datatype: date
    sql: ${TABLE}.fecha_creacion_lote_inspeccion ;;
  }

  dimension: num_caracteristica_inspeccion {
    type: string
    sql: ${TABLE}.num_caracteristica_inspeccion ;;
  }

  dimension: valoracion_resultado_inspeccion {
    type: string
    sql: ${TABLE}.valoracion_resultado_inspeccion ;;
  }

  dimension: media_valores_medidios {
    type: number
    sql: ${TABLE}.media_valores_medidios ;;
  }

  dimension: texto_breve {
    type: string
    sql: ${TABLE}.texto_breve ;;
  }

  dimension: lim_tolerancia_sup {
    type: number
    sql: ${TABLE}.lim_tolerancia_sup ;;
  }

  dimension: lim_tolerancia_inf {
    type: number
    sql: ${TABLE}.lim_tolerancia_inf ;;
  }

  dimension: fecha_inicio_inspeccion {
    type: date
    datatype: date
    sql: ${TABLE}.fecha_inicio_inspeccion ;;
  }

  dimension: hora_inicio_inspeccion {
    type: string
    sql: ${TABLE}.hora_inicio_inspeccion ;;
  }

  dimension: num_nodo_actual_aplzl {
    type: string
    sql: ${TABLE}.num_nodo_actual_APLZL ;;
  }

  dimension: texto_breve_oper {
    type: string
    sql: ${TABLE}.texto_breve_oper ;;
  }

  set: detail {
    fields: [
        num_lote_inspeccion,
  material,
  centro,
  lote,
  fecha_creacion_lote_inspeccion,
  num_caracteristica_inspeccion,
  valoracion_resultado_inspeccion,
  media_valores_medidios,
  texto_breve,
  lim_tolerancia_sup,
  lim_tolerancia_inf,
  fecha_inicio_inspeccion,
  hora_inicio_inspeccion,
  num_nodo_actual_aplzl,
  texto_breve_oper
    ]
  }
}
