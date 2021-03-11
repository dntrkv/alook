view: mail_job {
  sql_table_name: looker_test.mail_job ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: attach_logo {
    type: yesno
    sql: ${TABLE}.attach_logo ;;
  }

  dimension: attachment_file {
    type: string
    sql: ${TABLE}.attachment_file ;;
  }

  dimension: attachment_file_name {
    type: string
    sql: ${TABLE}.attachment_file_name ;;
  }

  dimension: attempts {
    type: number
    sql: ${TABLE}.attempts ;;
  }

  dimension: bcc {
    type: string
    sql: ${TABLE}.bcc ;;
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

  dimension: encrypted_raw {
    type: string
    sql: ${TABLE}.encrypted_raw ;;
  }

  dimension: encrypted_raw_hash {
    type: string
    sql: ${TABLE}.encrypted_raw_hash ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }

  dimension: html_body {
    type: string
    sql: ${TABLE}.html_body ;;
  }

  dimension_group: last_attempted {
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
    sql: ${TABLE}.last_attempted_at ;;
  }

  dimension: last_error {
    type: string
    sql: ${TABLE}.last_error ;;
  }

  dimension_group: next_attempt {
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
    sql: ${TABLE}.next_attempt_at ;;
  }

  dimension: raw {
    type: string
    sql: ${TABLE}.raw ;;
  }

  dimension: raw_cache_key {
    type: string
    sql: ${TABLE}.raw_cache_key ;;
  }

  dimension: reply_to {
    type: string
    sql: ${TABLE}.reply_to ;;
  }

  dimension: scheduled_task_id {
    type: number
    sql: ${TABLE}.scheduled_task_id ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}.`to` ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, attachment_file_name]
  }
}
