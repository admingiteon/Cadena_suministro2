#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: plan_lp_001_trazabilidad {
  derived_table: {
    sql: SELECT 1 id_Concepto,
             'PLAN DE LA DEMANDA' as Concepto,
             ID_de_Sociedad__IBP_ As Planta,
             ID_de_Planta__IBP_  as mercadopriori ,
             concat('00000000000',ID_de_Producto__IBP_) as SKU,
             Grupo_de_Articulos__dato_maestro_ as Grupoarticulos,
             Grupo_de_Articulos_Externo__dato_maestro_ as Grupoarticulosexterno,
             PeriodoNum,
             Periodo,
             Cantidad
       FROM `psa-sga-dfn-qa.reporting_ecc_mx.pla_de_demanda_01`
      WHERE PeriodoNum IS NOT null  ;;
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

  dimension: planta {
    type: string
    sql: ${TABLE}.Planta ;;
  }

  dimension: mercadopriori {
    type: string
    sql: ${TABLE}.mercadopriori ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: grupoarticulos {
    type: string
    sql: ${TABLE}.Grupoarticulos ;;
  }

  dimension: grupoarticulosexterno {
    type: string
    sql: ${TABLE}.Grupoarticulosexterno ;;
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
  }

  set: detail {
    fields: [
        id_concepto,
  concepto,
  planta,
  mercadopriori,
  sku,
  grupoarticulos,
  grupoarticulosexterno,
  periodo_num,
  periodo,
  cantidad
    ]
  }
}
