view: group_group {
  sql_table_name: looker_test.group_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: included_group_id {
    type: number
    sql: ${TABLE}.included_group_id ;;
  }

  dimension: into_group_id {
    type: number
    sql: ${TABLE}.into_group_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
