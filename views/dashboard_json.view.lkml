view: dashboard_json {
  sql_table_name: looker_test.dashboard_json ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: dashboard_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }

  dimension: json_description {
    type: string
    sql: ${TABLE}.json_description ;;
  }

  measure: count {
    type: count
    drill_fields: [id, dashboard.id]
  }
}
