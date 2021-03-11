view: alert {
  sql_table_name: looker_test.alert ;;
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

  dimension: allow_following_preference {
    type: yesno
    sql: ${TABLE}.allow_following_preference ;;
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

  dimension: cron {
    type: string
    sql: ${TABLE}.cron ;;
  }

  dimension: custom_title {
    type: string
    sql: ${TABLE}.custom_title ;;
  }

  dimension: dashboard_element_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dashboard_element_id ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: disabled {
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
    sql: ${TABLE}.disabled_date ;;
  }

  dimension: disabled_reason {
    type: string
    sql: ${TABLE}.disabled_reason ;;
  }

  dimension: followable {
    type: yesno
    sql: ${TABLE}.followable ;;
  }

  dimension: investigative_content_id {
    type: string
    sql: ${TABLE}.investigative_content_id ;;
  }

  dimension: investigative_content_type {
    type: string
    sql: ${TABLE}.investigative_content_type ;;
  }

  dimension: lookml_dashboard_id {
    type: string
    sql: ${TABLE}.lookml_dashboard_id ;;
  }

  dimension: lookml_link_id {
    type: string
    sql: ${TABLE}.lookml_link_id ;;
  }

  dimension_group: next_run {
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
    sql: ${TABLE}.next_run ;;
  }

  dimension: owner_user_id {
    type: number
    sql: ${TABLE}.owner_user_id ;;
  }

  dimension: processing_job_id {
    type: string
    sql: ${TABLE}.processing_job_id ;;
  }

  dimension_group: processing_start {
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
    sql: ${TABLE}.processing_start_time ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      alert_condition.id,
      alert_condition.field_name,
      dashboard_element.id,
      alert_condition_result.count,
      alert_destination.count,
      alert_sync_history.count
    ]
  }
}
