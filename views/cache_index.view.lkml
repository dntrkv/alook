view: cache_index {
  sql_table_name: looker_test.cache_index ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: cache {
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
    sql: ${TABLE}.cache_time ;;
  }

  dimension: cleanup_scheme {
    type: string
    sql: ${TABLE}.cleanup_scheme ;;
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

  dimension: encrypted {
    type: yesno
    sql: ${TABLE}.encrypted ;;
  }

  dimension: entry_type {
    type: string
    sql: ${TABLE}.entry_type ;;
  }

  dimension: execution_time {
    type: number
    sql: ${TABLE}.execution_time ;;
  }

  dimension_group: expiration {
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
    sql: ${TABLE}.expiration ;;
  }

  dimension: gzipped {
    type: yesno
    sql: ${TABLE}.gzipped ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }

  dimension_group: last_touched {
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
    sql: ${TABLE}.last_touched_at ;;
  }

  dimension: marshaled {
    type: yesno
    sql: ${TABLE}.marshaled ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.node_id ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}.query_text ;;
  }

  dimension: result_columns {
    type: number
    sql: ${TABLE}.result_columns ;;
  }

  dimension: result_rows {
    type: number
    sql: ${TABLE}.result_rows ;;
  }

  dimension: result_size_bytes {
    type: number
    sql: ${TABLE}.result_size_bytes ;;
  }

  dimension: time_to_live_without_touch {
    type: number
    sql: ${TABLE}.time_to_live_without_touch ;;
  }

  dimension: touch_count {
    type: number
    sql: ${TABLE}.touch_count ;;
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
    drill_fields: [id, node.hostname, node.prev_node_id]
  }
}
