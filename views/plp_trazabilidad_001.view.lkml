#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: plp_trazabilidad_001 {
  derived_table: {
    sql: DECLARE PeriodoCross STRING;
      SET PeriodoCross = (
          SELECT
          CONCAT('("', STRING_AGG(DISTINCT Periodo, '", "'), '")')
      FROM `psa-sga-dfn-qa.reporting_ecc_mx.pla_de_demanda_01`);

      execute immediate format("""
      SELECT * FROM
      (SELECT ID_de_Sociedad__IBP_ As Planta,
                    ID_de_Planta__IBP_  as mercadopriori ,
                    concat('00000000000',ID_de_Producto__IBP_) as SKU,
                    Grupo_de_Articulos__dato_maestro_ as Grupoarticulos,
                    Grupo_de_Articulos_Externo__dato_maestro_ as Grupoarticulosexterno,

                    Cantidad,
                    PeriodoNum
              FROM `psa-sga-dfn-qa.reporting_ecc_mx.pla_de_demanda_01`
             WHERE PeriodoNum IS NOT null
      )
      PIVOT
      (
        sum(Cantidad) AS _
        FOR PeriodoNum in %s
      )""", PeriodoCross) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
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

  dimension: __2023jun {
    type: number
    sql: ${TABLE}.`__2023-Jun` ;;
  }

  dimension: __2023jul {
    type: number
    sql: ${TABLE}.`__2023-Jul` ;;
  }

  dimension: __2023ago {
    type: number
    sql: ${TABLE}.`__2023-Ago` ;;
  }

  dimension: __2023sep {
    type: number
    sql: ${TABLE}.`__2023-Sep` ;;
  }

  dimension: __2023oct {
    type: number
    sql: ${TABLE}.`__2023-Oct` ;;
  }

  dimension: __2023nov {
    type: number
    sql: ${TABLE}.`__2023-Nov` ;;
  }

  dimension: __2023dic {
    type: number
    sql: ${TABLE}.`__2023-Dic` ;;
  }

  dimension: __2024ene {
    type: number
    sql: ${TABLE}.`__2024-Ene` ;;
  }

  dimension: __2024feb {
    type: number
    sql: ${TABLE}.`__2024-Feb` ;;
  }

  dimension: __2024mar {
    type: number
    sql: ${TABLE}.`__2024-Mar` ;;
  }

  dimension: __2024abr {
    type: number
    sql: ${TABLE}.`__2024-Abr` ;;
  }

  dimension: __2024may {
    type: number
    sql: ${TABLE}.`__2024-May` ;;
  }

  dimension: __2024jun {
    type: number
    sql: ${TABLE}.`__2024-Jun` ;;
  }

  dimension: __2024jul {
    type: number
    sql: ${TABLE}.`__2024-Jul` ;;
  }

  dimension: __2024ago {
    type: number
    sql: ${TABLE}.`__2024-Ago` ;;
  }

  dimension: __2024sep {
    type: number
    sql: ${TABLE}.`__2024-Sep` ;;
  }

  dimension: __2024oct {
    type: number
    sql: ${TABLE}.`__2024-Oct` ;;
  }

  dimension: __2024nov {
    type: number
    sql: ${TABLE}.`__2024-Nov` ;;
  }

  dimension: __2024dic {
    type: number
    sql: ${TABLE}.`__2024-Dic` ;;
  }

  dimension: __2025ene {
    type: number
    sql: ${TABLE}.`__2025-Ene` ;;
  }

  dimension: __2025feb {
    type: number
    sql: ${TABLE}.`__2025-Feb` ;;
  }

  dimension: __2025mar {
    type: number
    sql: ${TABLE}.`__2025-Mar` ;;
  }

  dimension: __2025abr {
    type: number
    sql: ${TABLE}.`__2025-Abr` ;;
  }

  dimension: __2025may {
    type: number
    sql: ${TABLE}.`__2025-May` ;;
  }

  dimension: __2025jun {
    type: number
    sql: ${TABLE}.`__2025-Jun` ;;
  }

  set: detail {
    fields: [
        planta,
	mercadopriori,
	sku,
	grupoarticulos,
	grupoarticulosexterno,
	__2023jun,
	__2023jul,
	__2023ago,
	__2023sep,
	__2023oct,
	__2023nov,
	__2023dic,
	__2024ene,
	__2024feb,
	__2024mar,
	__2024abr,
	__2024may,
	__2024jun,
	__2024jul,
	__2024ago,
	__2024sep,
	__2024oct,
	__2024nov,
	__2024dic,
	__2025ene,
	__2025feb,
	__2025mar,
	__2025abr,
	__2025may,
	__2025jun
    ]
  }
}
