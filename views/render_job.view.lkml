view: render_job {
  sql_table_name: looker_test.render_job ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: caching_node_id {
    type: number
    sql: ${TABLE}.caching_node_id ;;
  }

  dimension: caching_runtime {
    type: number
    sql: ${TABLE}.caching_runtime ;;
  }

  dimension: caching_thread_id {
    type: number
    sql: ${TABLE}.caching_thread_id ;;
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

  dimension: maestro_job_id {
    type: string
    sql: ${TABLE}.maestro_job_id ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.node_id ;;
  }

  dimension: phantom_runtime {
    type: number
    sql: ${TABLE}.phantom_runtime ;;
  }

  dimension: phantomjs_pid {
    type: number
    value_format_name: id
    sql: ${TABLE}.phantomjs_pid ;;
  }

  dimension: render_node_id {
    type: number
    sql: ${TABLE}.render_node_id ;;
  }

  dimension: render_options {
    type: string
    sql: ${TABLE}.render_options ;;
  }

  dimension: render_thread_id {
    type: number
    sql: ${TABLE}.render_thread_id ;;
  }

  dimension: retried_job_id {
    type: number
    sql: ${TABLE}.retried_job_id ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_detail {
    type: string
    sql: ${TABLE}.status_detail ;;
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
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name,
      node.hostname,
      node.prev_node_id
    ]
  }
}
