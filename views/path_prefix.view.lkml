view: path_prefix {
  sql_table_name: looker_test.path_prefix ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }

  dimension: sha {
    type: string
    sql: ${TABLE}.sha ;;
  }

  measure: count {
    type: count
    drill_fields: [id, history.count]
  }
}
