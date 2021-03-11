view: oauth_application {
  sql_table_name: looker_test.oauth_application ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: auth_request_params {
    type: string
    sql: ${TABLE}.auth_request_params ;;
  }

  dimension: authorization_endpoint {
    type: string
    sql: ${TABLE}.authorization_endpoint ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
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

  dimension: encrypted_client_secret {
    type: string
    sql: ${TABLE}.encrypted_client_secret ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: refresh_token_expires_in_default {
    type: number
    sql: ${TABLE}.refresh_token_expires_in_default ;;
  }

  dimension: refresh_token_returned_only_once {
    type: yesno
    sql: ${TABLE}.refresh_token_returned_only_once ;;
  }

  dimension: token_endpoint {
    type: string
    sql: ${TABLE}.token_endpoint ;;
  }

  dimension: uses_basic_auth {
    type: yesno
    sql: ${TABLE}.uses_basic_auth ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, db_connection.count, oauth_user_state.count]
  }
}
