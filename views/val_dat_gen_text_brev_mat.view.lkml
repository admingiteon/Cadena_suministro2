#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: val_dat_gen_text_brev_mat {
  derived_table: {
    sql: SELECT texto_breve_material FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cadena_suministro_datos_generales`
      group by 1 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: texto_breve_material {
    type: string
    sql: ${TABLE}.texto_breve_material ;;
  }

  set: detail {
    fields: [
        texto_breve_material
    ]
  }
}
