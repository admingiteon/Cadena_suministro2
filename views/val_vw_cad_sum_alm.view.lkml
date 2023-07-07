#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: val_vw_cad_sum_alm {
  derived_table: {
    sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cadena_suministro_almacenes` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: calle_numero {
    type: string
    sql: ${TABLE}.calle_numero ;;
  }

  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigo_postal ;;
  }

  dimension: poblacion {
    type: string
    sql: ${TABLE}.poblacion ;;
  }

  dimension: almacen {
    type: string
    sql: ${TABLE}.almacen ;;
  }

  dimension: denominacion_almacen {
    type: string
    sql: ${TABLE}.denominacion_almacen ;;
  }

  set: detail {
    fields: [
        centro,
	nombre,
	calle_numero,
	codigo_postal,
	poblacion,
	almacen,
	denominacion_almacen
    ]
  }
}
