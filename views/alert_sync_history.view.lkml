view: alert_sync_history {
  sql_table_name: looker_test.alert_sync_history ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: alert_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.alert_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: new_alert_condition_id {
    type: number
    sql: ${TABLE}.new_alert_condition_id ;;
  }

  dimension_group: notified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.notified_at ;;
  }

  dimension: original_alert_condition_id {
    type: number
    sql: ${TABLE}.original_alert_condition_id ;;
  }

  dimension: sync_classification_result {
    type: string
    sql: ${TABLE}.sync_classification_result ;;
  }

  dimension: sync_type {
    type: string
    sql: ${TABLE}.sync_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, alert.id]
  }
}
