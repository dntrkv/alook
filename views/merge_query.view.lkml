view: merge_query {
  sql_table_name: looker_test.merge_query ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: column_limit {
    type: number
    sql: ${TABLE}.column_limit ;;
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

  dimension: dynamic_fields {
    type: string
    sql: ${TABLE}.dynamic_fields ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }

  dimension: pivots {
    type: string
    sql: ${TABLE}.pivots ;;
  }

  dimension: sorts {
    type: string
    sql: ${TABLE}.sorts ;;
  }

  dimension: total {
    type: yesno
    sql: ${TABLE}.total ;;
  }

  dimension: vis_config {
    type: string
    sql: ${TABLE}.vis_config ;;
  }

  measure: count {
    type: count
    drill_fields: [id, merge_query_source_query.count, result_maker.count]
  }
}
