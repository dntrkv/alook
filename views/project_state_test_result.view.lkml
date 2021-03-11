view: project_state_test_result {
  sql_table_name: looker_test.project_state_test_result ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: project_state_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.project_state_id ;;
  }

  dimension: test_name {
    type: string
    sql: ${TABLE}.test_name ;;
  }

  dimension: test_name_hash {
    type: string
    sql: ${TABLE}.test_name_hash ;;
  }

  dimension: test_result {
    type: string
    sql: ${TABLE}.test_result ;;
  }

  measure: count {
    type: count
    drill_fields: [id, test_name, project_state.id, project_state.name]
  }
}
