view: node {
  sql_table_name: looker_test.node ;;
  drill_fields: [prev_node_id]

  dimension: prev_node_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.prev_node_id ;;
  }

  dimension: cache_port {
    type: string
    sql: ${TABLE}.cache_port ;;
  }

  dimension: clustered {
    type: yesno
    sql: ${TABLE}.clustered ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_master {
    type: yesno
    sql: ${TABLE}.is_master ;;
  }

  dimension_group: last_heartbeat {
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
    sql: ${TABLE}.last_heartbeat ;;
  }

  dimension: mac_adress {
    type: string
    sql: ${TABLE}.mac_adress ;;
  }

  dimension: new_secret {
    type: string
    sql: ${TABLE}.new_secret ;;
  }

  dimension: node_cluster_version {
    type: number
    sql: ${TABLE}.node_cluster_version ;;
  }

  dimension: node_to_node_port {
    type: string
    sql: ${TABLE}.node_to_node_port ;;
  }

  dimension: old_secret {
    type: string
    sql: ${TABLE}.old_secret ;;
  }

  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }

  dimension: queue_broker_port {
    type: string
    sql: ${TABLE}.queue_broker_port ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      prev_node_id,
      hostname,
      active_data_maintenance_task.count,
      active_pdt_publish_task.count,
      active_pdt_scraper_task.count,
      cache_index.count,
      distributed_mutex.count,
      history.count,
      render_job.count,
      scheduled_job_stage.count,
      system_status.count
    ]
  }
}
