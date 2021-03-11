view: scheduled_plan_destination {
  sql_table_name: looker_test.scheduled_plan_destination ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: apply_formatting {
    type: yesno
    sql: ${TABLE}.apply_formatting ;;
  }

  dimension: apply_vis {
    type: yesno
    sql: ${TABLE}.apply_vis ;;
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

  dimension: format {
    type: string
    sql: ${TABLE}.format ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: parameters {
    type: string
    sql: ${TABLE}.parameters ;;
  }

  dimension: s3_access_key_id {
    type: string
    sql: ${TABLE}.s3_access_key_id ;;
  }

  dimension: s3_region {
    type: string
    sql: ${TABLE}.s3_region ;;
  }

  dimension: s3_secret_access_key {
    type: string
    sql: ${TABLE}.s3_secret_access_key ;;
  }

  dimension: scheduled_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.scheduled_plan_id ;;
  }

  dimension: secret_parameters {
    type: string
    sql: ${TABLE}.secret_parameters ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, scheduled_plan.id, scheduled_plan.name, scheduled_job_destination.count]
  }
}
