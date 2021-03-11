view: project_configuration {
  sql_table_name: looker_test.project_configuration ;;

  dimension: allow_warnings {
    type: yesno
    sql: ${TABLE}.allow_warnings ;;
  }

  dimension: deploy_secret {
    type: string
    sql: ${TABLE}.deploy_secret ;;
  }

  dimension: folders_enabled {
    type: yesno
    sql: ${TABLE}.folders_enabled ;;
  }

  dimension: git_application_server_http_port {
    type: number
    sql: ${TABLE}.git_application_server_http_port ;;
  }

  dimension: git_application_server_http_scheme {
    type: string
    sql: ${TABLE}.git_application_server_http_scheme ;;
  }

  dimension: git_auth_cookie {
    type: string
    sql: ${TABLE}.git_auth_cookie ;;
  }

  dimension: git_password {
    type: string
    sql: ${TABLE}.git_password ;;
  }

  dimension: git_password_user_attribute {
    type: string
    sql: ${TABLE}.git_password_user_attribute ;;
  }

  dimension: git_production_branch_name {
    type: string
    sql: ${TABLE}.git_production_branch_name ;;
  }

  dimension: git_release_mgmt_enabled {
    type: yesno
    sql: ${TABLE}.git_release_mgmt_enabled ;;
  }

  dimension: git_service_name {
    type: string
    sql: ${TABLE}.git_service_name ;;
  }

  dimension: git_username {
    type: string
    sql: ${TABLE}.git_username ;;
  }

  dimension: git_username_user_attribute {
    type: string
    sql: ${TABLE}.git_username_user_attribute ;;
  }

  dimension: lookml_type {
    type: string
    sql: ${TABLE}.lookml_type ;;
  }

  dimension: managed_by_marketplace {
    type: yesno
    sql: ${TABLE}.managed_by_marketplace ;;
  }

  dimension: marketplace_auxiliary_of {
    type: string
    sql: ${TABLE}.marketplace_auxiliary_of ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: pull_request_mode {
    type: string
    sql: ${TABLE}.pull_request_mode ;;
  }

  dimension: test_state_required_for_deploy {
    type: string
    sql: ${TABLE}.test_state_required_for_deploy ;;
  }

  dimension: validation_required {
    type: yesno
    sql: ${TABLE}.validation_required ;;
  }

  measure: count {
    type: count
    drill_fields: [git_service_name, git_username, git_production_branch_name]
  }
}
