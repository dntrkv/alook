view: looker_q_looker_bq_activemq_msgs {
  sql_table_name: looker_test.LookerQ_LookerBQ_ACTIVEMQ_MSGS ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: container {
    type: string
    sql: ${TABLE}.CONTAINER ;;
  }

  dimension: expiration {
    type: number
    sql: ${TABLE}.EXPIRATION ;;
  }

  dimension: msg {
    type: string
    sql: ${TABLE}.MSG ;;
  }

  dimension: msgid_prod {
    type: string
    sql: ${TABLE}.MSGID_PROD ;;
  }

  dimension: msgid_seq {
    type: number
    sql: ${TABLE}.MSGID_SEQ ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: xid {
    type: string
    sql: ${TABLE}.XID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
