#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: val_largo_plazo_completo_aruma {
  derived_table: {
    sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.largo_plazo_completo`  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id_de_producto__ibp_ {
    type: number
    sql: ${TABLE}.ID_de_Producto__IBP_ ;;
  }

  dimension: fecha {
    type: date
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }

  dimension: Periodomes {
    type: string
    sql: extract(month from ${TABLE}.fecha);;

    }

  set: detail {
    fields: [
        id_de_producto__ibp_,
  fecha,
  cantidad
    ]
  }
}
