#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: val_vw_recetas_fabricacion {
  derived_table: {
    sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cadena_suministro_recetas_fabricacion`  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: version_fabricacion {
    type: string
    sql: ${TABLE}.version_fabricacion ;;
  }

  dimension: num_material {
    type: string
    sql: ${TABLE}.num_material ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }

  dimension: tamano_lote_de {
    type: number
    sql: ${TABLE}.tamano_lote_de ;;
  }

  dimension: tamano_lote_a {
    type: number
    sql: ${TABLE}.tamano_lote_a ;;
  }

  dimension: tipo_hoja_ruta {
    type: string
    sql: ${TABLE}.tipo_hoja_ruta ;;
  }

  dimension: clave_grupo_hoja_ruta {
    type: string
    sql: ${TABLE}.clave_grupo_hoja_ruta ;;
  }

  dimension: contador_grupo_hora_ruta {
    type: string
    sql: ${TABLE}.contador_grupo_hora_ruta ;;
  }

  dimension: fecha_inicio_validez {
    type: date
    datatype: date
    sql: ${TABLE}.fecha_inicio_validez ;;
  }

  dimension: fecha_ultima_modificacion_hoja_ruta {
    type: date
    datatype: date
    sql: ${TABLE}.fecha_ultima_modificacion_hoja_ruta ;;
  }

  dimension: estatus_hoja_ruta {
    type: string
    sql: ${TABLE}.estatus_hoja_ruta ;;
  }

  dimension: cantidad_base {
    type: number
    sql: ${TABLE}.cantidad_base ;;
  }

  dimension: contador_conversion_plko {
    type: number
    sql: ${TABLE}.contador_conversion_plko ;;
  }

  dimension: denominador_conversion_plko {
    type: number
    sql: ${TABLE}.denominador_conversion_plko ;;
  }

  dimension: unidad_medida_plko {
    type: string
    sql: ${TABLE}.unidad_medida_plko ;;
  }

  dimension: num_operacion {
    type: string
    sql: ${TABLE}.num_operacion ;;
  }

  dimension: indicador_fase {
    type: string
    sql: ${TABLE}.indicador_fase ;;
  }

  dimension: id_recurso {
    type: string
    sql: ${TABLE}.id_recurso ;;
  }

  dimension: clave_control {
    type: string
    sql: ${TABLE}.clave_control ;;
  }

  dimension: texto_breve_operacion {
    type: string
    sql: ${TABLE}.texto_breve_operacion ;;
  }

  dimension: cantidad_base_operacion {
    type: number
    sql: ${TABLE}.cantidad_base_operacion ;;
  }

  dimension: unidad_medida_plpo {
    type: string
    sql: ${TABLE}.unidad_medida_plpo ;;
  }

  dimension: contador_conversion_plpo {
    type: number
    sql: ${TABLE}.contador_conversion_plpo ;;
  }

  dimension: denominador_conversion_plpo {
    type: number
    sql: ${TABLE}.denominador_conversion_plpo ;;
  }

  dimension: valor_prefijo_vgw01 {
    type: number
    sql: ${TABLE}.valor_prefijo_vgw01 ;;
  }

  dimension: unidad_medida_vge01 {
    type: string
    sql: ${TABLE}.unidad_medida_vge01 ;;
  }

  dimension: clase_actividad_lar01 {
    type: string
    sql: ${TABLE}.clase_actividad_lar01 ;;
  }

  dimension: valor_prefijo_vgw02 {
    type: number
    sql: ${TABLE}.valor_prefijo_vgw02 ;;
  }

  dimension: unidad_medida_vge02 {
    type: string
    sql: ${TABLE}.unidad_medida_vge02 ;;
  }

  dimension: clase_actividad_lar02 {
    type: string
    sql: ${TABLE}.clase_actividad_lar02 ;;
  }

  dimension: valor_prefijo_vgw03 {
    type: number
    sql: ${TABLE}.valor_prefijo_vgw03 ;;
  }

  dimension: unidad_medida_vge03 {
    type: string
    sql: ${TABLE}.unidad_medida_vge03 ;;
  }

  dimension: clase_actividad_lar03 {
    type: string
    sql: ${TABLE}.clase_actividad_lar03 ;;
  }

  dimension: valor_prefijo_vgw04 {
    type: number
    sql: ${TABLE}.valor_prefijo_vgw04 ;;
  }

  dimension: unidad_medida_vge04 {
    type: string
    sql: ${TABLE}.unidad_medida_vge04 ;;
  }

  dimension: clase_actividad_lar04 {
    type: string
    sql: ${TABLE}.clase_actividad_lar04 ;;
  }

  dimension: valor_prefijo_vgw05 {
    type: number
    sql: ${TABLE}.valor_prefijo_vgw05 ;;
  }

  dimension: unidad_medida_vge05 {
    type: string
    sql: ${TABLE}.unidad_medida_vge05 ;;
  }

  dimension: clase_actividad_lar05 {
    type: string
    sql: ${TABLE}.clase_actividad_lar05 ;;
  }

  dimension: valor_prefijo_vgw06 {
    type: number
    sql: ${TABLE}.valor_prefijo_vgw06 ;;
  }

  dimension: unidad_medida_vge06 {
    type: string
    sql: ${TABLE}.unidad_medida_vge06 ;;
  }

  dimension: clase_actividad_lar06 {
    type: string
    sql: ${TABLE}.clase_actividad_lar06 ;;
  }

  set: detail {
    fields: [
        version_fabricacion,
  num_material,
  centro,
  tamano_lote_de,
  tamano_lote_a,
  tipo_hoja_ruta,
  clave_grupo_hoja_ruta,
  contador_grupo_hora_ruta,
  fecha_inicio_validez,
  fecha_ultima_modificacion_hoja_ruta,
  estatus_hoja_ruta,
  cantidad_base,
  contador_conversion_plko,
  denominador_conversion_plko,
  unidad_medida_plko,
  num_operacion,
  indicador_fase,
  id_recurso,
  clave_control,
  texto_breve_operacion,
  cantidad_base_operacion,
  unidad_medida_plpo,
  contador_conversion_plpo,
  denominador_conversion_plpo,
  valor_prefijo_vgw01,
  unidad_medida_vge01,
  clase_actividad_lar01,
  valor_prefijo_vgw02,
  unidad_medida_vge02,
  clase_actividad_lar02,
  valor_prefijo_vgw03,
  unidad_medida_vge03,
  clase_actividad_lar03,
  valor_prefijo_vgw04,
  unidad_medida_vge04,
  clase_actividad_lar04,
  valor_prefijo_vgw05,
  unidad_medida_vge05,
  clase_actividad_lar05,
  valor_prefijo_vgw06,
  unidad_medida_vge06,
  clase_actividad_lar06
    ]
  }
}
