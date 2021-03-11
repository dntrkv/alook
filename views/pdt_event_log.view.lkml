view: pdt_event_log {
  sql_table_name: looker_test.pdt_event_log ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: action_data {
    type: string
    sql: ${TABLE}.action_data ;;
  }

  dimension: at {
    type: number
    sql: ${TABLE}.at ;;
  }

  dimension: connection {
    type: string
    sql: ${TABLE}.connection ;;
  }

  dimension: hash_key {
    type: string
    sql: ${TABLE}.hash_key ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: tid {
    type: string
    sql: ${TABLE}.tid ;;
  }

  dimension: tseq {
    type: number
    sql: ${TABLE}.tseq ;;
  }

  dimension: view_name {
    type: string
    sql: ${TABLE}.view_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, model_name, view_name, table_name]
  }
}
