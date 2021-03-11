view: lookml_model_db_connection {
  sql_table_name: looker_test.lookml_model_db_connection ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: db_connection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.db_connection_id ;;
  }

  dimension: lookml_model_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.lookml_model_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      lookml_model.id,
      lookml_model.name,
      lookml_model.project_name,
      db_connection.id,
      db_connection.name,
      db_connection.username,
      db_connection.ssh_username,
      db_connection.tmp_db_name
    ]
  }
}
