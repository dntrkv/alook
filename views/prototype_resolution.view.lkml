view: prototype_resolution {
  sql_table_name: looker_test.prototype_resolution ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: prototype_file_names {
    type: string
    sql: ${TABLE}.prototype_file_names ;;
  }

  dimension: prototype_file_names_json {
    type: string
    sql: ${TABLE}.prototype_file_names_json ;;
  }

  dimension: remote_ref {
    type: string
    sql: ${TABLE}.remote_ref ;;
  }

  dimension: remote_url {
    type: string
    sql: ${TABLE}.remote_url ;;
  }

  dimension: root_project_id {
    type: string
    sql: ${TABLE}.root_project_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
