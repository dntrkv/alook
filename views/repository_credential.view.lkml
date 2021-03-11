view: repository_credential {
  sql_table_name: looker_test.repository_credential ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: git_password {
    type: string
    sql: ${TABLE}.git_password ;;
  }

  dimension: git_username {
    type: string
    sql: ${TABLE}.git_username ;;
  }

  dimension: remote_url {
    type: string
    sql: ${TABLE}.remote_url ;;
  }

  dimension: root_project_id {
    type: string
    sql: ${TABLE}.root_project_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, git_username]
  }
}
