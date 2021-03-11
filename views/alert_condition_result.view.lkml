view: alert_condition_result {
  sql_table_name: looker_test.alert_condition_result ;;
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

  dimension: alert_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.alert_id ;;
  }

  dimension: condition_met {
    type: yesno
    sql: ${TABLE}.condition_met ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: notification_sent {
    type: yesno
    sql: ${TABLE}.notification_sent ;;
  }

  dimension: query_history_id {
    type: string
    sql: ${TABLE}.query_history_id ;;
  }

  dimension_group: query_ran {
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
    sql: ${TABLE}.query_ran_at ;;
  }

  dimension_group: ran {
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
    sql: ${TABLE}.ran_at ;;
  }

  dimension: runtime {
    type: number
    sql: ${TABLE}.runtime ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: template_data {
    type: string
    sql: ${TABLE}.template_data ;;
  }

  measure: count {
    type: count
    drill_fields: [id, alert.id, alert_condition.id, alert_condition.field_name]
  }
}
