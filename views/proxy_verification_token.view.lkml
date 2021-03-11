view: proxy_verification_token {
  sql_table_name: looker_test.proxy_verification_token ;;
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

  dimension: encrypted_integration_access_token {
    type: string
    sql: ${TABLE}.encrypted_integration_access_token ;;
  }

  dimension: encrypted_verification_token {
    type: string
    sql: ${TABLE}.encrypted_verification_token ;;
  }

  dimension: install_id {
    type: string
    sql: ${TABLE}.install_id ;;
  }

  dimension: install_name {
    type: string
    sql: ${TABLE}.install_name ;;
  }

  dimension: installation_type {
    type: string
    sql: ${TABLE}.installation_type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, install_name]
  }
}
