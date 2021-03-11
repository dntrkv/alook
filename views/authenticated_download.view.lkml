view: authenticated_download {
  sql_table_name: looker_test.authenticated_download ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: apply_formatting {
    type: yesno
    sql: ${TABLE}.apply_formatting ;;
  }

  dimension: apply_vis {
    type: yesno
    sql: ${TABLE}.apply_vis ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }

  dimension: download_token {
    type: string
    sql: ${TABLE}.download_token ;;
  }

  dimension: encrypted_download_token {
    type: string
    sql: ${TABLE}.encrypted_download_token ;;
  }

  dimension: encrypted_download_token2 {
    type: string
    sql: ${TABLE}.encrypted_download_token2 ;;
  }

  dimension: encrypted_query_guid {
    type: string
    sql: ${TABLE}.encrypted_query_guid ;;
  }

  dimension: expires_at {
    type: number
    sql: ${TABLE}.expires_at ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.format ;;
  }

  dimension: lookup_id {
    type: string
    sql: ${TABLE}.lookup_id ;;
  }

  dimension: query_guid {
    type: string
    sql: ${TABLE}.query_guid ;;
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
