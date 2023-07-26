#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: vw_largo_plazo_trazabilidad {
derived_table: {
  sql:select  materiales.tipo_material as tipomaterial,
              materiales.unidad_medida as um,
              materiales.grupo_articulos as grupoarticulo,
              materiales.grupo_articulo_ext as grupoarticuloexterno,
              materiales.clave_idioma as claveidioma,
              texto_breve_material as articulodescribe,
              renglones.* from (
              SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_01`
              union all
              SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_02`
              union all
              SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_03`
              union all
              SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_04`
              union all
              SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_05`
              union all
              SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_06`
              union all
              SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_07`
              union all
              SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_tablero_largo_plazo_trazab_renglon_08`
      ) As renglones
      left outer join `psa-sga-dfn-qa.reporting_ecc_mx.vw_cadena_suministro_textos_materiales` As materiales
      on renglones.sku=materiales.material
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

dimension: tipomaterial {
  type: string
  sql: ${TABLE}.tipomaterial ;;
}

  dimension: um {
    type: string
    sql: ${TABLE}.um ;;
}

  dimension: grupoarticulo {
    type: string
    sql: ${TABLE}.grupoarticulo ;;
}

dimension: grupoarticuloexterno {
    type: string
    sql: ${TABLE}.grupoarticuloexterno ;;
}

dimension: claveidioma {
    type: string
    sql: ${TABLE}.claveidioma ;;
}

dimension: articulodescribe {
    type: string
    sql: ${TABLE}.articulodescribe ;;
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
  sql: ${TABLE}.Cantidad ;;

  value_format: "#.00;(#.00)"
}



set: detail {
  fields: [
    tipomaterial,
    um,
    grupoarticulo,
    grupoarticuloexterno,
    claveidioma,
    articulodescribe,
    id_concepto,
    concepto,
    sku,
    periodo_num,
    periodo,
    cantidad
  ]
}
}
