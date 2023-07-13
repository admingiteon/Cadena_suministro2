#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: val_vw_ordenes_proceso {
  derived_table: {
    sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cadena_suministro_ordenes_proceso`    ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: num_orden {
    type: string
    sql: ${TABLE}.num_orden ;;
  }

  dimension: clase_orden {
    type: string
    sql: ${TABLE}.clase_orden ;;
  }

  dimension: fecha_creacion_orden {
    type: date
    datatype: date
    sql: ${TABLE}.fecha_creacion_orden ;;
  }

  dimension: texto_breve {
    type: string
    sql: ${TABLE}.texto_breve ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }

  dimension: fin_programado {
    type: date
    datatype: date
    sql: ${TABLE}.fin_programado ;;
  }

  dimension: inicio_programado {
    type: date
    datatype: date
    sql: ${TABLE}.inicio_programado ;;
  }

  dimension: fecha_inicio_real {
    type: date
    datatype: date
    sql: ${TABLE}.fecha_inicio_real ;;
  }

  dimension: fecha_fin_real {
    type: date
    datatype: date
    sql: ${TABLE}.fecha_fin_real ;;
  }

  dimension: num_pos_orden {
    type: string
    sql: ${TABLE}.num_pos_orden ;;
  }

  dimension: num_material_orden {
    type: string
    sql: ${TABLE}.num_material_orden ;;
  }

  dimension: cant_pos_orden {
    type: number
    sql: ${TABLE}.cant_pos_orden ;;
  }

  dimension: cant_entrada_mercancias_pos_orden {
    type: number
    sql: ${TABLE}.cant_entrada_mercancias_pos_orden ;;
  }

  dimension: unidad_medida_base {
    type: string
    sql: ${TABLE}.unidad_medida_base ;;
  }

  dimension: estatus_individual_objeto {
    type: string
    sql: ${TABLE}.estatus_individual_objeto ;;
  }

  dimension: estatus_individual_objeto_breve {
    type: string
    sql: ${TABLE}.estatus_individual_objeto_breve ;;
  }

  dimension: estatus_individual_objeto_txt30 {
    type: string
    sql: ${TABLE}.estatus_individual_objeto_txt30 ;;
  }

  set: detail {
    fields: [
        num_orden,
  clase_orden,
  fecha_creacion_orden,
  texto_breve,
  centro,
  fin_programado,
  inicio_programado,
  fecha_inicio_real,
  fecha_fin_real,
  num_pos_orden,
  num_material_orden,
  cant_pos_orden,
  cant_entrada_mercancias_pos_orden,
  unidad_medida_base,
  estatus_individual_objeto,
  estatus_individual_objeto_breve,
  estatus_individual_objeto_txt30
    ]
  }
}
