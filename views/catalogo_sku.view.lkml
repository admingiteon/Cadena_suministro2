#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: catalogo_sku {
  derived_table: {
    sql: SELECT * FROM `psa-sga-dfn-qa.reporting_ecc_mx.vw_cat_materiales` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: numero_material_nivel2 {
    type: string
    sql: ${TABLE}.Numero_material_nivel2 ;;
  }

  dimension: centro_nivel2 {
    type: string
    sql: ${TABLE}.Centro_nivel2 ;;
  }

  dimension: alternativa_lista_materiales_nivel2 {
    type: string
    sql: ${TABLE}.Alternativa_lista_materiales_nivel2 ;;
  }

  dimension: num_lista_materiales_nivel2 {
    type: string
    sql: ${TABLE}.Num_lista_materiales_nivel2 ;;
  }

  dimension: num_nodo_lista_materiales_nivel2 {
    type: string
    sql: ${TABLE}.Num_nodo_lista_materiales_nivel2 ;;
  }

  dimension: componente_nivel2 {
    type: string
    sql: ${TABLE}.Componente_nivel2 ;;
  }

  dimension: cantidad_nivel2 {
    type: number
    sql: ${TABLE}.Cantidad_nivel2 ;;
  }

  dimension: unidad_de_medida_nivel2 {
    type: string
    sql: ${TABLE}.Unidad_de_medida_nivel2 ;;
  }

  dimension: version_nivel2 {
    type: string
    sql: ${TABLE}.Version_nivel2 ;;
  }

  dimension: categoria_de_lista_de_materiales_stasnivel2 {
    type: string
    sql: ${TABLE}.Categoria_de_lista_de_materiales_stasnivel2 ;;
  }

  dimension: estatus_general_nivel2 {
    type: string
    sql: ${TABLE}.Estatus_general_nivel2 ;;
  }

  dimension: grupo_de_articulos_nivel2 {
    type: string
    sql: ${TABLE}.Grupo_de_articulos_nivel2 ;;
  }

  dimension: texto_breve_material_nivel2 {
    type: string
    sql: ${TABLE}.Texto_breve_material_nivel2 ;;
  }

  set: detail {
    fields: [
        numero_material_nivel2,
	centro_nivel2,
	alternativa_lista_materiales_nivel2,
	num_lista_materiales_nivel2,
	num_nodo_lista_materiales_nivel2,
	componente_nivel2,
	cantidad_nivel2,
	unidad_de_medida_nivel2,
	version_nivel2,
	categoria_de_lista_de_materiales_stasnivel2,
	estatus_general_nivel2,
	grupo_de_articulos_nivel2,
	texto_breve_material_nivel2
    ]
  }
}
