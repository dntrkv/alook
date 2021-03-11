view: look_json {
  sql_table_name: looker_test.look_json ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: json_description {
    type: string
    sql: ${TABLE}.json_description ;;
  }

  dimension: look_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.look_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, look.id]
  }
}
