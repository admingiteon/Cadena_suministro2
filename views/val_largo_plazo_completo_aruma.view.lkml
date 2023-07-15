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
      sql:Concat(extract(Year from val_largo_plazo_completo_aruma.fecha)
                ,"-"
                ,
                Case when extract(month from val_largo_plazo_completo_aruma.fecha) = 1  then 'Ene'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 2  then 'Feb'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 3  then 'Mar'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 4  then 'Abr'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 5  then 'May'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 6  then 'Jun'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 7  then 'Jul'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 8  then 'Ago'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 9  then 'Sep'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 10 then 'Oct'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 11 then 'Nov'
                     when extract(month from val_largo_plazo_completo_aruma.fecha) = 12 then 'Dic' else
                     'Error'
                end
                )
    ;;
    order_by_field: val_largo_plazo_completo_aruma.fecha
    }

  set: detail {
    fields: [
        id_de_producto__ibp_,
  fecha,
  cantidad
    ]
  }
}
