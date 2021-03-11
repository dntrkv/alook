view: license_validation_response {
  sql_table_name: looker_test.license_validation_response ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: integrity_check {
    type: string
    sql: ${TABLE}.integrity_check ;;
  }

  dimension: response_code {
    type: number
    sql: ${TABLE}.response_code ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension_group: timestamp_completed {
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
    sql: ${TABLE}.timestamp_completed ;;
  }

  dimension_group: timestamp_initiated {
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
    sql: ${TABLE}.timestamp_initiated ;;
  }

  dimension: validation_type {
    type: string
    sql: ${TABLE}.validation_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
