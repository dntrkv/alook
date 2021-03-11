view: access_token {
  sql_table_name: looker_test.access_token ;;
  drill_fields: [outgoing_access_token_id]

  dimension: outgoing_access_token_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.outgoing_access_token_id ;;
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

  dimension: credentials_api3_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.credentials_api3_id ;;
  }

  dimension: encrypted_code {
    type: string
    sql: ${TABLE}.encrypted_code ;;
  }

  dimension: encrypted_token {
    type: string
    sql: ${TABLE}.encrypted_token ;;
  }

  dimension: encrypted_token2 {
    type: string
    sql: ${TABLE}.encrypted_token2 ;;
  }

  dimension_group: expires {
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
    sql: ${TABLE}.expires_at ;;
  }

  dimension: grant_type {
    type: string
    sql: ${TABLE}.grant_type ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: lookup_id {
    type: string
    sql: ${TABLE}.lookup_id ;;
  }

  dimension: resource_owner_id {
    type: number
    sql: ${TABLE}.resource_owner_id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }

  dimension: session_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.session_id ;;
  }

  dimension: sudo_user_id {
    type: number
    sql: ${TABLE}.sudo_user_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_overrides_workspace {
    type: yesno
    sql: ${TABLE}.user_overrides_workspace ;;
  }

  dimension: workspace_id {
    type: string
    sql: ${TABLE}.workspace_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      outgoing_access_token_id,
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name,
      role.id,
      role.name,
      session.id,
      credentials_api3.id,
      session.count
    ]
  }
}
