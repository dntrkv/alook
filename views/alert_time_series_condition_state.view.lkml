view: alert_time_series_condition_state {
  sql_table_name: looker_test.alert_time_series_condition_state ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alert_condition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.alert_condition_id ;;
  }

  dimension: condition_met {
    type: yesno
    sql: ${TABLE}.condition_met ;;
  }

  dimension: latest_time_series_id {
    type: string
    sql: ${TABLE}.latest_time_series_id ;;
  }

  dimension: previous_time_series_id {
    type: string
    sql: ${TABLE}.previous_time_series_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, alert_condition.id, alert_condition.field_name]
  }
}
