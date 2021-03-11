view: query {
  sql_table_name: looker_test.query ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: column_limit {
    type: string
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

  dimension: fields {
    type: string
    sql: ${TABLE}.fields ;;
  }

  dimension: fill_fields {
    type: string
    sql: ${TABLE}.fill_fields ;;
  }

  dimension: filter_config {
    type: string
    sql: ${TABLE}.filter_config ;;
  }

  dimension: filter_expression {
    type: string
    sql: ${TABLE}.filter_expression ;;
  }

  dimension: filters {
    type: string
    sql: ${TABLE}.filters ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }

  dimension: limit {
    type: string
    sql: ${TABLE}.`limit` ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: pivots {
    type: string
    sql: ${TABLE}.pivots ;;
  }

  dimension: query_timezone {
    type: string
    sql: ${TABLE}.query_timezone ;;
  }

  dimension: row_total {
    type: string
    sql: ${TABLE}.row_total ;;
  }

  dimension: runtime {
    type: number
    sql: ${TABLE}.runtime ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: sorts {
    type: string
    sql: ${TABLE}.sorts ;;
  }

  dimension: subtotals {
    type: string
    sql: ${TABLE}.subtotals ;;
  }

  dimension: total {
    type: yesno
    sql: ${TABLE}.total ;;
  }

  dimension: view {
    type: string
    sql: ${TABLE}.view ;;
  }

  dimension: vis_config {
    type: string
    sql: ${TABLE}.vis_config ;;
  }

  dimension: visible_ui_sections {
    type: string
    sql: ${TABLE}.visible_ui_sections ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dashboard_element.count,
      history.count,
      look.count,
      merge_query_source_query.count,
      result_maker.count,
      scheduled_job.count,
      scheduled_plan.count,
      slug.count
    ]
  }
}
