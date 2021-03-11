view: scheduled_job {
  sql_table_name: looker_test.scheduled_job ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: crontab {
    type: string
    sql: ${TABLE}.crontab ;;
  }

  dimension: dashboard_filters {
    type: string
    sql: ${TABLE}.dashboard_filters ;;
  }

  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }

  dimension: data_signature {
    type: string
    sql: ${TABLE}.data_signature ;;
  }

  dimension: data_slug {
    type: string
    sql: ${TABLE}.data_slug ;;
  }

  dimension: datagroup {
    type: string
    sql: ${TABLE}.datagroup ;;
  }

  dimension: filters_string {
    type: string
    sql: ${TABLE}.filters_string ;;
  }

  dimension_group: finalized {
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
    sql: ${TABLE}.finalized_at ;;
  }

  dimension: include_links {
    type: yesno
    sql: ${TABLE}.include_links ;;
  }

  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.look_id ;;
  }

  dimension: lookml_dashboard_id {
    type: string
    sql: ${TABLE}.lookml_dashboard_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pdf_landscape {
    type: yesno
    sql: ${TABLE}.pdf_landscape ;;
  }

  dimension: pdf_paper_size {
    type: string
    sql: ${TABLE}.pdf_paper_size ;;
  }

  dimension: prewarm_only {
    type: yesno
    sql: ${TABLE}.prewarm_only ;;
  }

  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.query_id ;;
  }

  dimension: require_change {
    type: yesno
    sql: ${TABLE}.require_change ;;
  }

  dimension: require_no_results {
    type: yesno
    sql: ${TABLE}.require_no_results ;;
  }

  dimension: require_results {
    type: yesno
    sql: ${TABLE}.require_results ;;
  }

  dimension: row_limit_reached {
    type: yesno
    sql: ${TABLE}.row_limit_reached ;;
  }

  dimension: run_as_recipient {
    type: yesno
    sql: ${TABLE}.run_as_recipient ;;
  }

  dimension: run_once {
    type: yesno
    sql: ${TABLE}.run_once ;;
  }

  dimension: scheduled_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.scheduled_plan_id ;;
  }

  dimension: scheduled_render_properties_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.scheduled_render_properties_id ;;
  }

  dimension: send_all_results {
    type: yesno
    sql: ${TABLE}.send_all_results ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_detail {
    type: string
    sql: ${TABLE}.status_detail ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      scheduled_plan.id,
      scheduled_plan.name,
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name,
      look.id,
      dashboard.id,
      query.id,
      scheduled_render_properties.id,
      scheduled_job_destination.count,
      scheduled_job_stage.count
    ]
  }
}
