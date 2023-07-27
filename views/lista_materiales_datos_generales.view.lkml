#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: lista_materiales_datos_generales {
  derived_table: {
    sql: SELECT * FROM `psa-psa-cadena-qa.reporting_ecc_mx.vw_lista_materiales_de_datos_generales`  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }

  dimension: texto_breve_material {
    type: string
    sql: ${TABLE}.texto_breve_material ;;
  }

  set: detail {
    fields: [
        material,
  texto_breve_material
    ]
  }
}
