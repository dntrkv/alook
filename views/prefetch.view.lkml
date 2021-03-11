view: prefetch {
  sql_table_name: looker_test.prefetch ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: computation_time {
    type: number
    sql: ${TABLE}.computation_time ;;
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

  dimension_group: expires {
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
    sql: ${TABLE}.expires_at ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }

  dimension: hit_count {
    type: number
    sql: ${TABLE}.hit_count ;;
  }

  dimension: result_size_bytes {
    type: number
    sql: ${TABLE}.result_size_bytes ;;
  }

  dimension: results {
    type: string
    sql: ${TABLE}.results ;;
  }

  dimension_group: touched {
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
    sql: ${TABLE}.touched_at ;;
  }

  dimension: ttl {
    type: number
    sql: ${TABLE}.ttl ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
