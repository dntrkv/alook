view: content_usage {
  sql_table_name: looker_test.content_usage ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: api_count {
    type: number
    sql: ${TABLE}.api_count ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}.content_id ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.content_type ;;
  }

  dimension: embed_count {
    type: number
    sql: ${TABLE}.embed_count ;;
  }

  dimension: favorite_count {
    type: number
    sql: ${TABLE}.favorite_count ;;
  }

  dimension_group: last_accessed {
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
    sql: ${TABLE}.last_accessed_at ;;
  }

  dimension: other_count {
    type: number
    sql: ${TABLE}.other_count ;;
  }

  dimension: prefetch_count {
    type: number
    sql: ${TABLE}.prefetch_count ;;
  }

  dimension: public_count {
    type: number
    sql: ${TABLE}.public_count ;;
  }

  dimension: schedule_count {
    type: number
    sql: ${TABLE}.schedule_count ;;
  }

  dimension: total_count {
    type: number
    sql: ${TABLE}.total_count ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
