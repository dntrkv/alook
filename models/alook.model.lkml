connection: "thelook"

# include all the views
# include: "/test.view"

datagroup: alook_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: alook_default_datagroup
