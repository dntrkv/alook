view: slack_identity {
  sql_table_name: looker_test.slack_identity ;;
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

  dimension: encrypted_user_access_token {
    type: string
    sql: ${TABLE}.encrypted_user_access_token ;;
  }

  dimension: slack_team_id {
    type: string
    sql: ${TABLE}.slack_team_id ;;
  }

  dimension: slack_user_id {
    type: string
    sql: ${TABLE}.slack_user_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.first_name, user.last_name, user.dev_mode_user_id, user.dev_branch_name]
  }
}
