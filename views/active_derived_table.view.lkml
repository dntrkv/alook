view: active_derived_table {
  sql_table_name: looker_test.active_derived_table ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cache_value {
    type: string
    sql: ${TABLE}.cache_value ;;
  }

  dimension: connection {
    type: string
    sql: ${TABLE}.connection ;;
  }

  dimension: dead_at {
    type: number
    sql: ${TABLE}.dead_at ;;
  }

  dimension: dev_mode {
    type: number
    sql: ${TABLE}.dev_mode ;;
  }

  dimension: full_view_name {
    type: string
    sql: ${TABLE}.full_view_name ;;
  }

  dimension: increment_generation {
    type: number
    sql: ${TABLE}.increment_generation ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }

  dimension: min_reap_at {
    type: number
    sql: ${TABLE}.min_reap_at ;;
  }

  dimension: mode {
    type: number
    sql: ${TABLE}.mode ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rename_to {
    type: string
    sql: ${TABLE}.rename_to ;;
  }

  dimension: retired_at {
    type: number
    sql: ${TABLE}.retired_at ;;
  }

  dimension: started_at {
    type: number
    sql: ${TABLE}.started_at ;;
  }

  dimension: structure {
    type: string
    sql: ${TABLE}.structure ;;
  }

  dimension: tid {
    type: string
    sql: ${TABLE}.tid ;;
  }

  dimension: trigger_at {
    type: number
    sql: ${TABLE}.trigger_at ;;
  }

  dimension: trigger_duration {
    type: number
    sql: ${TABLE}.trigger_duration ;;
  }

  dimension: trigger_error {
    type: string
    sql: ${TABLE}.trigger_error ;;
  }

  dimension: updated_at {
    type: number
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, full_view_name]
  }
}
