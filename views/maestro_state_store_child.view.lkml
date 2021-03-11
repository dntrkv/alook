view: maestro_state_store_child {
  sql_table_name: looker_test.maestro_state_store_child ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: child_id {
    type: string
    sql: ${TABLE}.child_id ;;
  }

  dimension: child_signature {
    type: string
    sql: ${TABLE}.child_signature ;;
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

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: org {
    type: string
    sql: ${TABLE}.org ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.signature ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
