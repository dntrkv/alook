view: active_pdt_scraper_task {
  sql_table_name: looker_test.active_pdt_scraper_task ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: connection {
    type: string
    sql: ${TABLE}.connection ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }

  dimension: finished_at {
    type: number
    sql: ${TABLE}.finished_at ;;
  }

  dimension: node_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.node_id ;;
  }

  dimension: started_at {
    type: number
    sql: ${TABLE}.started_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, node.hostname, node.prev_node_id]
  }
}
