view: alert_condition {
  sql_table_name: looker_test.alert_condition ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: applied_dashboard_filters {
    type: string
    sql: ${TABLE}.applied_dashboard_filters ;;
  }

  dimension: base_query_id {
    type: number
    sql: ${TABLE}.base_query_id ;;
  }

  dimension: condition_query_id {
    type: number
    sql: ${TABLE}.condition_query_id ;;
  }

  dimension: condition_strategy {
    type: string
    sql: ${TABLE}.condition_strategy ;;
  }

  dimension: condition_type {
    type: string
    sql: ${TABLE}.condition_type ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.field_name ;;
  }

  dimension: field_selection_filters {
    type: string
    sql: ${TABLE}.field_selection_filters ;;
  }

  dimension: field_title {
    type: string
    sql: ${TABLE}.field_title ;;
  }

  dimension: threshold_value {
    type: string
    sql: ${TABLE}.threshold_value ;;
  }

  dimension: time_series_dimension {
    type: string
    sql: ${TABLE}.time_series_dimension ;;
  }

  measure: count {
    type: count
    drill_fields: [id, field_name, alert.count, alert_condition_result.count, alert_time_series_condition_state.count]
  }
}
