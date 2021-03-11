view: oauth_user_state {
  sql_table_name: looker_test.oauth_user_state ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: access_token_expires_at {
    type: number
    sql: ${TABLE}.access_token_expires_at ;;
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

  dimension: encrypted_access_token {
    type: string
    sql: ${TABLE}.encrypted_access_token ;;
  }

  dimension: encrypted_refresh_token {
    type: string
    sql: ${TABLE}.encrypted_refresh_token ;;
  }

  dimension: expiry_last_checked_at {
    type: number
    sql: ${TABLE}.expiry_last_checked_at ;;
  }

  dimension: oauth_application_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oauth_application_id ;;
  }

  dimension: refresh_token_expires_at {
    type: number
    sql: ${TABLE}.refresh_token_expires_at ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name,
      oauth_application.id,
      oauth_application.name,
      oauth_request_state.count
    ]
  }
}
