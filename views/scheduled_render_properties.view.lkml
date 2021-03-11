view: scheduled_render_properties {
  sql_table_name: looker_test.scheduled_render_properties ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: color_theme {
    type: string
    sql: ${TABLE}.color_theme ;;
  }

  dimension: embed {
    type: yesno
    sql: ${TABLE}.embed ;;
  }

  dimension: inline_table_width {
    type: number
    sql: ${TABLE}.inline_table_width ;;
  }

  dimension: long_tables {
    type: yesno
    sql: ${TABLE}.long_tables ;;
  }

  dimension: properties_version {
    type: number
    sql: ${TABLE}.properties_version ;;
  }

  dimension: scheduled_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.scheduled_plan_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, scheduled_plan.id, scheduled_plan.name, scheduled_job.count]
  }
}
