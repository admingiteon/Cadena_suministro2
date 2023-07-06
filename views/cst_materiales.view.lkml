#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: cst_materiales {
  derived_table: {
    sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cat_materiales_ultima_v` LIMIT 10 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: numero_de_material_nivel2 {
    type: string
    sql: ${TABLE}.Numero_de_material_nivel2 ;;
  }

  dimension: numero_de_orden_nivel2 {
    type: string
    sql: ${TABLE}.Numero_de_orden_nivel2 ;;
  }

  dimension: cantidad_notificada_nivel2 {
    type: number
    sql: ${TABLE}.Cantidad_notificada_nivel2 ;;
  }

  dimension: fecha_de_liberacion_real_nivel2 {
    type: date
    datatype: date
    sql: ${TABLE}.Fecha_de_liberacion_real_nivel2 ;;
  }

  dimension: numero_reserva_nivel2 {
    type: string
    sql: ${TABLE}.Numero_reserva_nivel2 ;;
  }

  dimension: centro_nivel2 {
    type: string
    sql: ${TABLE}.Centro_nivel2 ;;
  }

  dimension: tipo_lista_mat_nivel2 {
    type: string
    sql: ${TABLE}.Tipo_lista_mat_nivel2 ;;
  }

  dimension: numero_lista_mat_nivel2 {
    type: string
    sql: ${TABLE}.Numero_lista_mat_nivel2 ;;
  }

  dimension: num_nodo_lista_mat_nivel2 {
    type: string
    sql: ${TABLE}.Num_nodo_lista_mat_nivel2 ;;
  }

  dimension: contador_interno_nivel2 {
    type: string
    sql: ${TABLE}.Contador_interno_nivel2 ;;
  }

  dimension: componente_nivel2 {
    type: string
    sql: ${TABLE}.Componente_nivel2 ;;
  }

  dimension: cantidad_nivel2 {
    type: number
    sql: ${TABLE}.Cantidad_nivel2 ;;
  }

  dimension: unidad_medida_nivel2 {
    type: string
    sql: ${TABLE}.Unidad_medida_nivel2 ;;
  }

  dimension: texto_de_componente_nivel2 {
    type: string
    sql: ${TABLE}.Texto_de_componente_nivel2 ;;
  }

  dimension: estatus_componente_centro {
    type: string
    sql: ${TABLE}.Estatus_componente_centro ;;
  }

  dimension: estatus_general_componente {
    type: string
    sql: ${TABLE}.Estatus_general_componente ;;
  }

  dimension: grupo_articulos_componente {
    type: string
    sql: ${TABLE}.Grupo_articulos_componente ;;
  }
  set: detail {
    fields: [
        numero_de_material_nivel2,
  numero_de_orden_nivel2,
  cantidad_notificada_nivel2,
  fecha_de_liberacion_real_nivel2,
  numero_reserva_nivel2,
  centro_nivel2,
  tipo_lista_mat_nivel2,
  numero_lista_mat_nivel2,
  num_nodo_lista_mat_nivel2,
  contador_interno_nivel2,
  componente_nivel2,
  cantidad_nivel2,
  unidad_medida_nivel2,
  texto_de_componente_nivel2,
  estatus_componente_centro,
  estatus_general_componente,
  grupo_articulos_componente
    ]
  }
}
