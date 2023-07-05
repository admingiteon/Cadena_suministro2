connection: "hypson"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: cadena_suministro_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cadena_suministro_default_datagroup

explore: vw_cadena_suministro_pedidos_venta {}

explore: ejercicio1 {}
