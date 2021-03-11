view: datagroup {
  sql_table_name: looker_test.datagroup ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: stale_before {
    type: number
    sql: ${TABLE}.stale_before ;;
  }

  dimension: trigger_check_at {
    type: number
    sql: ${TABLE}.trigger_check_at ;;
  }

  dimension: trigger_error {
    type: string
    sql: ${TABLE}.trigger_error ;;
  }

  dimension: trigger_value {
    type: string
    sql: ${TABLE}.trigger_value ;;
  }

  dimension: triggered_at {
    type: number
    sql: ${TABLE}.triggered_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, model_name]
  }
}
