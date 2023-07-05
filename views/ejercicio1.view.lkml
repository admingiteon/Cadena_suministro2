#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: ejercicio1 {
  derived_table: {
    sql: SELECT *
           FROM `psa-sga-dfn-qa.reporting_ecc_mx.pla_de_demanda_01`
          order by ejercicio asc, mes asc;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id_de_sociedad__ibp_ {
    type: string
    sql: ${TABLE}.ID_de_Sociedad__IBP_ ;;
  }

  dimension: id_de_planta__ibp_ {
    type: string
    sql: ${TABLE}.ID_de_Planta__IBP_ ;;
  }

  dimension: id_de_mercado__ibp_ {
    type: string
    sql: ${TABLE}.ID_de_Mercado__IBP_ ;;
  }

  dimension: desc_de_mercado__ibp_ {
    type: string
    sql: ${TABLE}.Desc_de_Mercado__IBP_ ;;
  }

  dimension: id_de_ubicaci__n__ibp_ {
    type: string
    sql: ${TABLE}.ID_de_Ubicaci__n__IBP_ ;;
  }

  dimension: id_de_producto__ibp_ {
    type: number
    sql: ${TABLE}.ID_de_Producto__IBP_ ;;
  }

  dimension: mercado_prioritario__ibp_ {
    type: string
    sql: ${TABLE}.Mercado_Prioritario__IBP_ ;;
  }

  dimension: grupo_de_articulos__dato_maestro_ {
    type: string
    sql: ${TABLE}.Grupo_de_Articulos__dato_maestro_ ;;
  }

  dimension: grupo_de_articulos_externo__dato_maestro_ {
    type: string
    sql: ${TABLE}.Grupo_de_Articulos_Externo__dato_maestro_ ;;
  }

  dimension: key_figure__ibp_ {
    type: string
    sql: ${TABLE}.Key_Figure__IBP_ ;;
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

  dimension: ejercicio {
    type: number
    sql: ${TABLE}.ejercicio ;;
    }

  dimension: mes {
    type: number
    sql: ${TABLE}.Mes ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }

  dimension: mes_des_cor {
    type: string
    sql: ${TABLE}.mes_des_cor ;;
  }

  set: detail {
    fields: [
        id_de_sociedad__ibp_,
        id_de_planta__ibp_,
        id_de_mercado__ibp_,
        desc_de_mercado__ibp_,
        id_de_ubicaci__n__ibp_,
        id_de_producto__ibp_,
        mercado_prioritario__ibp_,
        grupo_de_articulos__dato_maestro_,
        grupo_de_articulos_externo__dato_maestro_,
        key_figure__ibp_,
        fecha,
        cantidad,
        ejercicio,
        mes,
        periodo,
        mes_des_cor
    ]
  }
}
