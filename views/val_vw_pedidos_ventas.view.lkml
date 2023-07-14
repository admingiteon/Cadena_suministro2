#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: val_vw_pedidos_ventas {
  derived_table: {
    sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cadena_suministro_pedidos_venta`  ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: doc_ventas {
    type: string
    sql: ${TABLE}.doc_ventas ;;
  }

  dimension: fecha_creacion_registro {
    type: date
    datatype: date
    sql: ${TABLE}.fechaCreacion_registro ;;
  }

  dimension: clase_doc_ventas {
    type: string
    sql: ${TABLE}.clase_doc_ventas ;;
  }

  dimension: org_ventas {
    type: string
    sql: ${TABLE}.org_ventas ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}.sector ;;
  }

  dimension: solicitante {
    type: string
    sql: ${TABLE}.solicitante ;;
  }

  dimension: valor_neto_pedido {
    type: number
    sql: ${TABLE}.valor_neto_pedido ;;
  }

  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }

  dimension: posicion {
    type: string
    sql: ${TABLE}.posicion ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }

  dimension: grupo_articulos {
    type: string
    sql: ${TABLE}.grupo_articulos ;;
  }

  dimension: texto_breve {
    type: string
    sql: ${TABLE}.texto_breve ;;
  }

  dimension: cantidad_pedido {
    type: number
    sql: ${TABLE}.cantidad_pedido ;;
  }

  dimension: valor_posicion {
    type: number
    sql: ${TABLE}.valor_posicion ;;
  }

  dimension: tipo_cambio {
    type: number
    sql: ${TABLE}.tipo_cambio ;;
  }

  set: detail {
    fields: [
        doc_ventas,
  fecha_creacion_registro,
  clase_doc_ventas,
  org_ventas,
  sector,
  solicitante,
  valor_neto_pedido,
  moneda,
  posicion,
  material,
  grupo_articulos,
  texto_breve,
  cantidad_pedido,
  valor_posicion,
  tipo_cambio
    ]
  }
}
