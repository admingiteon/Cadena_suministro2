#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: vw_cadena_suministro_textos_materiales {
  derived_table: {
    sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cadena_suministro_textos_materiales` where substring(num_material,12,2)='40'  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: num_material {
    type: string
    sql: ${TABLE}.num_material ;;
  }

  dimension: tipo_material {
    type: string
    sql: ${TABLE}.tipo_material ;;
  }

  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.unidad_medida ;;
  }

  dimension: grupo_articulos {
    type: string
    sql: ${TABLE}.grupo_articulos ;;
  }

  dimension: grupo_articulo_ext {
    type: string
    sql: ${TABLE}.grupo_articulo_ext ;;
  }

  dimension: clave_idioma {
    type: string
    sql: ${TABLE}.clave_idioma ;;
  }

  dimension: texto_breve_material {
    type: string
    sql: ${TABLE}.texto_breve_material ;;
  }

  set: detail {
    fields: [
        num_material,
  tipo_material,
  unidad_medida,
  grupo_articulos,
  grupo_articulo_ext,
  clave_idioma,
  texto_breve_material
    ]
  }
}
