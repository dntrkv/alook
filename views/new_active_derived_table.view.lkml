view: new_active_derived_table {
  sql_table_name: looker_test.new_active_derived_table ;;
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

  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }

  dimension: mode {
    type: number
    sql: ${TABLE}.mode ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rename_to {
    type: string
    sql: ${TABLE}.rename_to ;;
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

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
