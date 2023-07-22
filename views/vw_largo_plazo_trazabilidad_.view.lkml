#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: vw_largo_plazo_trazabilidad {
derived_table: {
  sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_01`
      union all
      SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_02`
      union all
      SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_03`
      union all
      SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_04`
      ;;
}

measure: count {
  type: count
  drill_fields: [detail*]
}

dimension: id_concepto {
  type: number
  sql: ${TABLE}.id_Concepto ;;
}

dimension: concepto {
  type: string
  sql: ${TABLE}.Concepto ;;
}

dimension: sku {
  type: string
  sql: ${TABLE}.SKU ;;
}

dimension: periodo_num {
  type: string
  sql: ${TABLE}.PeriodoNum ;;
}

dimension: periodo {
  type: string
  sql: ${TABLE}.Periodo ;;
}

dimension: cantidad {
  type: number
  sql: ${TABLE}.Cantidad


  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad

        Case
            when  ${TABLE}.id_Concepto=4
            then value_format: "0,000.0000"
            else value_format: "0,000"
        end

 ;;

}

set: detail {
  fields: [
    id_concepto,
    concepto,
    sku,
    periodo_num,
    periodo,
    cantidad
  ]
}
}
