view: lookml_model {
  sql_table_name: looker_test.lookml_model ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: unlimited_db_connections {
    type: yesno
    sql: ${TABLE}.unlimited_db_connections ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, project_name, lookml_model_db_connection.count]
  }
}
