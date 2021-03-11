view: looker_q_looker_bq_activemq_acks {
  sql_table_name: looker_test.LookerQ_LookerBQ_ACTIVEMQ_ACKS ;;

  dimension: client_id {
    type: string
    sql: ${TABLE}.CLIENT_ID ;;
  }

  dimension: container {
    type: string
    sql: ${TABLE}.CONTAINER ;;
  }

  dimension: last_acked_id {
    type: number
    sql: ${TABLE}.LAST_ACKED_ID ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: selector {
    type: string
    sql: ${TABLE}.SELECTOR ;;
  }

  dimension: sub_dest {
    type: string
    sql: ${TABLE}.SUB_DEST ;;
  }

  dimension: sub_name {
    type: string
    sql: ${TABLE}.SUB_NAME ;;
  }

  dimension: xid {
    type: string
    sql: ${TABLE}.XID ;;
  }

  measure: count {
    type: count
    drill_fields: [sub_name]
  }
}
