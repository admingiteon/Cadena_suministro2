#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: val_vw_recursos_capacidades {
  derived_table: {
    sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cadena_suministro_recursos_capacidades`  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: tipo_obejeto {
    type: string
    sql: ${TABLE}.tipo_obejeto ;;
  }

  dimension: id_objeto {
    type: string
    sql: ${TABLE}.id_objeto ;;
  }

  dimension: puesto_trabajo {
    type: string
    sql: ${TABLE}.puesto_trabajo ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }

  dimension: clase_puesto_trabajo {
    type: string
    sql: ${TABLE}.clase_puesto_trabajo ;;
  }

  dimension: peticion_borrado {
    type: string
    sql: ${TABLE}.peticion_borrado ;;
  }

  dimension: id_capacidad {
    type: string
    sql: ${TABLE}.id_capacidad ;;
  }

  dimension: clave_idioma {
    type: string
    sql: ${TABLE}.clave_idioma ;;
  }

  dimension: denominacion_breve {
    type: string
    sql: ${TABLE}.denominacion_breve ;;
  }

  dimension: cantidad_capacidad_individual {
    type: number
    sql: ${TABLE}.cantidad_capacidad_individual ;;
  }

  dimension: hora_inicio_s {
    type: number
    sql: ${TABLE}.hora_inicio_s ;;
  }

  dimension: hora_fin_s {
    type: number
    sql: ${TABLE}.hora_fin_s ;;
  }

  dimension: grado_utilizacion_prc {
    type: number
    sql: ${TABLE}.grado_utilizacion_prc ;;
  }

  dimension: tiempo_pausa_s {
    type: number
    sql: ${TABLE}.tiempo_pausa_s ;;
  }

  dimension: unidad_medida_capacidad {
    type: string
    sql: ${TABLE}.unidad_medida_capacidad ;;
  }

  dimension: nombre_capacidad {
    type: string
    sql: ${TABLE}.nombre_capacidad ;;
  }

  dimension: total_horas_disponibles {
    type: number
    sql: ${TABLE}.total_horas_disponibles ;;
  }

  set: detail {
    fields: [
        tipo_obejeto,
  id_objeto,
  puesto_trabajo,
  centro,
  clase_puesto_trabajo,
  peticion_borrado,
  id_capacidad,
  clave_idioma,
  denominacion_breve,
  cantidad_capacidad_individual,
  hora_inicio_s,
  hora_fin_s,
  grado_utilizacion_prc,
  tiempo_pausa_s,
  unidad_medida_capacidad,
  nombre_capacidad,
  total_horas_disponibles
    ]
  }
}
