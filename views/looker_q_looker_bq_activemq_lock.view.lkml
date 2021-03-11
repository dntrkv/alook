view: looker_q_looker_bq_activemq_lock {
  sql_table_name: looker_test.LookerQ_LookerBQ_ACTIVEMQ_LOCK ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: broker_name {
    type: string
    sql: ${TABLE}.BROKER_NAME ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.TIME ;;
  }

  measure: count {
    type: count
    drill_fields: [id, broker_name]
  }
}
