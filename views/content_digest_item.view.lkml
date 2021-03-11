view: content_digest_item {
  sql_table_name: looker_test.content_digest_item ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}.content_id ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.content_type ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_content_digest_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_content_digest_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user_content_digest.id]
  }
}
