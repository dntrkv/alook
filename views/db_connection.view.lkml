view: db_connection {
  sql_table_name: looker_test.db_connection ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: after_connect_statements {
    type: string
    sql: ${TABLE}.after_connect_statements ;;
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

  dimension: database {
    type: string
    sql: ${TABLE}.`database` ;;
  }

  dimension: db_connection_certificate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.db_connection_certificate_id ;;
  }

  dimension: db_timezone {
    type: string
    sql: ${TABLE}.db_timezone ;;
  }

  dimension: dialect {
    type: string
    sql: ${TABLE}.dialect ;;
  }

  dimension: disable_context_comment {
    type: yesno
    sql: ${TABLE}.disable_context_comment ;;
  }

  dimension: encrypted_private_key {
    type: string
    sql: ${TABLE}.encrypted_private_key ;;
  }

  dimension: example {
    type: yesno
    sql: ${TABLE}.example ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: integrity_hash {
    type: string
    sql: ${TABLE}.integrity_hash ;;
  }

  dimension: jdbc_additional_params {
    type: string
    sql: ${TABLE}.jdbc_additional_params ;;
  }

  dimension: last_reap_at {
    type: number
    sql: ${TABLE}.last_reap_at ;;
  }

  dimension: last_regen_at {
    type: number
    sql: ${TABLE}.last_regen_at ;;
  }

  dimension: maintenance_cron {
    type: string
    sql: ${TABLE}.maintenance_cron ;;
  }

  dimension: managed {
    type: yesno
    sql: ${TABLE}.managed ;;
  }

  dimension: max_billing_gigabytes {
    type: string
    sql: ${TABLE}.max_billing_gigabytes ;;
  }

  dimension: max_billing_tier {
    type: number
    sql: ${TABLE}.max_billing_tier ;;
  }

  dimension: max_connections {
    type: number
    sql: ${TABLE}.max_connections ;;
  }

  dimension: misc_field {
    type: string
    sql: ${TABLE}.misc_field ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: oauth_application_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oauth_application_id ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: pdt_concurrency {
    type: number
    sql: ${TABLE}.pdt_concurrency ;;
  }

  dimension: pool_timeout {
    type: number
    sql: ${TABLE}.pool_timeout ;;
  }

  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }

  dimension: query_timezone {
    type: string
    sql: ${TABLE}.query_timezone ;;
  }

  dimension: reg_key {
    type: string
    sql: ${TABLE}.reg_key ;;
  }

  dimension: schema {
    type: string
    sql: ${TABLE}.`schema` ;;
  }

  dimension_group: schema_busted {
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
    sql: ${TABLE}.schema_busted_at ;;
  }

  dimension: sql_runner_precache_tables {
    type: yesno
    sql: ${TABLE}.sql_runner_precache_tables ;;
  }

  dimension: sql_writing_with_info_schema {
    type: yesno
    sql: ${TABLE}.sql_writing_with_info_schema ;;
  }

  dimension: ssh_forward {
    type: yesno
    sql: ${TABLE}.ssh_forward ;;
  }

  dimension: ssh_host {
    type: string
    sql: ${TABLE}.ssh_host ;;
  }

  dimension: ssh_port {
    type: number
    sql: ${TABLE}.ssh_port ;;
  }

  dimension: ssh_remote_host {
    type: string
    sql: ${TABLE}.ssh_remote_host ;;
  }

  dimension: ssh_remote_port {
    type: number
    sql: ${TABLE}.ssh_remote_port ;;
  }

  dimension: ssh_username {
    type: string
    sql: ${TABLE}.ssh_username ;;
  }

  dimension: ssl {
    type: yesno
    sql: ${TABLE}.`ssl` ;;
  }

  dimension: tmp_db_name {
    type: string
    sql: ${TABLE}.tmp_db_name ;;
  }

  dimension: tunnel_id {
    type: string
    sql: ${TABLE}.tunnel_id ;;
  }

  dimension: user_attribute_fields {
    type: string
    sql: ${TABLE}.user_attribute_fields ;;
  }

  dimension: user_db_credentials {
    type: yesno
    sql: ${TABLE}.user_db_credentials ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: uses_tns {
    type: yesno
    sql: ${TABLE}.uses_tns ;;
  }

  dimension: verify_ssl {
    type: yesno
    sql: ${TABLE}.verify_ssl ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      username,
      ssh_username,
      tmp_db_name,
      user.first_name,
      user.last_name,
      user.dev_mode_user_id,
      user.dev_branch_name,
      db_connection_certificate.id,
      oauth_application.id,
      oauth_application.name,
      db_connection_override.count,
      lookml_model_db_connection.count,
      upload_table.count
    ]
  }
}
