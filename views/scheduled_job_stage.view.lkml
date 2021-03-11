view: scheduled_job_stage {
  sql_table_name: looker_test.scheduled_job_stage ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: completed {
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
    sql: ${TABLE}.completed_at ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.node_id ;;
  }

  dimension: scheduled_job_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.scheduled_job_id ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}.started_at ;;
  }

  dimension: thread_id {
    type: number
    sql: ${TABLE}.thread_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, scheduled_job.id, scheduled_job.name, node.hostname, node.prev_node_id]
  }
}
