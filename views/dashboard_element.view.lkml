view: dashboard_element {
  sql_table_name: looker_test.dashboard_element ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: body_text {
    type: string
    sql: ${TABLE}.body_text ;;
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

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: filterables_listen {
    type: string
    sql: ${TABLE}.filterables_listen ;;
  }

  dimension: listen {
    type: string
    sql: ${TABLE}.listen ;;
  }

  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.look_id ;;
  }

  dimension: lookml_link_id {
    type: string
    sql: ${TABLE}.lookml_link_id ;;
  }

  dimension: note_display {
    type: string
    sql: ${TABLE}.note_display ;;
  }

  dimension: note_state {
    type: string
    sql: ${TABLE}.note_state ;;
  }

  dimension: note_text {
    type: string
    sql: ${TABLE}.note_text ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.query_id ;;
  }

  dimension: refresh_interval {
    type: string
    sql: ${TABLE}.refresh_interval ;;
  }

  dimension: result_maker_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.result_maker_id ;;
  }

  dimension: subtitle_text {
    type: string
    sql: ${TABLE}.subtitle_text ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: title_hidden {
    type: yesno
    sql: ${TABLE}.title_hidden ;;
  }

  dimension: title_text {
    type: string
    sql: ${TABLE}.title_text ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dashboard.id,
      look.id,
      query.id,
      result_maker.id,
      alert.count,
      dashboard_layout_component.count
    ]
  }
}
