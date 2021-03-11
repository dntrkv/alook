view: distributed_mutex {
  sql_table_name: looker_test.distributed_mutex ;;

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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.node_id ;;
  }

  dimension: thread_id {
    type: string
    sql: ${TABLE}.thread_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name, node.hostname, node.prev_node_id]
  }
}
