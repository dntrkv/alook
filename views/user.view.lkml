view: user {
  sql_table_name: looker_test.user ;;
  drill_fields: [dev_mode_user_id]

  dimension: dev_mode_user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.dev_mode_user_id ;;
  }

  dimension: auto_provisioned_api_user {
    type: yesno
    sql: ${TABLE}.auto_provisioned_api_user ;;
  }

  dimension: browser_count {
    type: number
    sql: ${TABLE}.browser_count ;;
  }

  dimension: chat_disabled {
    type: yesno
    sql: ${TABLE}.chat_disabled ;;
  }

  dimension: chat_popover {
    type: yesno
    sql: ${TABLE}.chat_popover ;;
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

  dimension: dev_branch_name {
    type: string
    sql: ${TABLE}.dev_branch_name ;;
  }

  dimension: dev_mode {
    type: yesno
    sql: ${TABLE}.dev_mode ;;
  }

  dimension: editor_keybinding_mode {
    type: string
    sql: ${TABLE}.editor_keybinding_mode ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: eula_accepted {
    type: yesno
    sql: ${TABLE}.eula_accepted ;;
  }

  dimension_group: eula_accepted {
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
    sql: ${TABLE}.eula_accepted_time ;;
  }

  dimension: eula_accepted_version {
    type: string
    sql: ${TABLE}.eula_accepted_version ;;
  }

  dimension: external_avatar_url {
    type: string
    sql: ${TABLE}.external_avatar_url ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: home_space_id {
    type: string
    sql: ${TABLE}.home_space_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: is_admin {
    type: yesno
    sql: ${TABLE}.is_admin ;;
  }

  dimension: is_disabled {
    type: yesno
    sql: ${TABLE}.is_disabled ;;
  }

  dimension: is_looker_employee {
    type: yesno
    sql: ${TABLE}.is_looker_employee ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: marketing_email_updates {
    type: yesno
    sql: ${TABLE}.marketing_email_updates ;;
  }

  dimension: models {
    type: string
    sql: ${TABLE}.models ;;
  }

  dimension: models_dir {
    type: string
    sql: ${TABLE}.models_dir ;;
  }

  dimension: models_dir_validated {
    type: yesno
    sql: ${TABLE}.models_dir_validated ;;
  }

  dimension: outgoing_access_token_id {
    type: number
    sql: ${TABLE}.outgoing_access_token_id ;;
  }

  dimension: prev_permissions {
    type: string
    sql: ${TABLE}.prev_permissions ;;
  }

  dimension: release_email_updates {
    type: yesno
    sql: ${TABLE}.release_email_updates ;;
  }

  dimension: requires_email_verification {
    type: yesno
    sql: ${TABLE}.requires_email_verification ;;
  }

  dimension: sticky_workspace_id {
    type: string
    sql: ${TABLE}.sticky_workspace_id ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension_group: tokens_invalid_before {
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
    sql: ${TABLE}.tokens_invalid_before ;;
  }

  dimension: ui_state {
    type: string
    sql: ${TABLE}.ui_state ;;
  }

  dimension: version_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.version_set_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      dev_mode_user_id,
      first_name,
      last_name,
      dev_branch_name,
      version_set.id,
      access_token.count,
      action_hub_secret_user_state.count,
      action_hub_state_authentication.count,
      alert_destination.count,
      api_nonce.count,
      authenticated_download.count,
      content_favorite.count,
      content_metadata_group_user.count,
      content_view.count,
      cookie_consent.count,
      credentials_api.count,
      credentials_api3.count,
      credentials_email.count,
      credentials_embed.count,
      credentials_ephemeral.count,
      credentials_google.count,
      credentials_ldap.count,
      credentials_looker_openid.count,
      credentials_oidc.count,
      credentials_saml.count,
      credentials_totp.count,
      dashboard.count,
      db_connection.count,
      db_credentials.count,
      email_verification.count,
      embed_secret.count,
      event.count,
      group_user.count,
      history.count,
      homepage.count,
      homepage_event.count,
      login.count,
      login_attempt.count,
      look.count,
      oauth_client_app_user_activation.count,
      oauth_user_state.count,
      orders.count,
      project_deployment.count,
      project_log.count,
      proxy_nonce.count,
      render_job.count,
      role_user.count,
      scheduled_job.count,
      scheduled_plan.count,
      session.count,
      slack_identity.count,
      space_user.count,
      sql_query.count,
      upload_table.count,
      user_access_filter.count,
      user_attribute.count,
      user_attribute_user_value.count,
      user_content_digest.count,
      user_direct_role.count,
      user_facts.count,
      user_facts_role.count
    ]
  }
}
