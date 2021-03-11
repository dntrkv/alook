view: ldap_config {
  sql_table_name: looker_test.ldap_config ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: allow_direct_roles {
    type: yesno
    sql: ${TABLE}.allow_direct_roles ;;
  }

  dimension: allow_normal_group_membership {
    type: yesno
    sql: ${TABLE}.allow_normal_group_membership ;;
  }

  dimension: allow_roles_from_normal_groups {
    type: yesno
    sql: ${TABLE}.allow_roles_from_normal_groups ;;
  }

  dimension: alternate_email_login_allowed {
    type: yesno
    sql: ${TABLE}.alternate_email_login_allowed ;;
  }

  dimension: auth_requires_role {
    type: yesno
    sql: ${TABLE}.auth_requires_role ;;
  }

  dimension: connection_host {
    type: string
    sql: ${TABLE}.connection_host ;;
  }

  dimension: connection_port {
    type: string
    sql: ${TABLE}.connection_port ;;
  }

  dimension: connection_tls {
    type: yesno
    sql: ${TABLE}.connection_tls ;;
  }

  dimension: connection_tls_no_verify {
    type: yesno
    sql: ${TABLE}.connection_tls_no_verify ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension: encrypted_auth_password {
    type: string
    sql: ${TABLE}.encrypted_auth_password ;;
  }

  dimension: encrypted_auth_username {
    type: string
    sql: ${TABLE}.encrypted_auth_username ;;
  }

  dimension: external_signon_url {
    type: string
    sql: ${TABLE}.external_signon_url ;;
  }

  dimension: force_no_page {
    type: yesno
    sql: ${TABLE}.force_no_page ;;
  }

  dimension: groups_base_dn {
    type: string
    sql: ${TABLE}.groups_base_dn ;;
  }

  dimension: groups_finder_type {
    type: string
    sql: ${TABLE}.groups_finder_type ;;
  }

  dimension: groups_member_attribute {
    type: string
    sql: ${TABLE}.groups_member_attribute ;;
  }

  dimension: groups_objectclasses {
    type: string
    sql: ${TABLE}.groups_objectclasses ;;
  }

  dimension: groups_user_attribute {
    type: string
    sql: ${TABLE}.groups_user_attribute ;;
  }

  dimension: merge_new_users_by_email {
    type: yesno
    sql: ${TABLE}.merge_new_users_by_email ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_at ;;
  }

  dimension: modified_by {
    type: number
    sql: ${TABLE}.modified_by ;;
  }

  dimension: set_roles_from_groups {
    type: yesno
    sql: ${TABLE}.set_roles_from_groups ;;
  }

  dimension: user_attribute_map_email {
    type: string
    sql: ${TABLE}.user_attribute_map_email ;;
  }

  dimension: user_attribute_map_first_name {
    type: string
    sql: ${TABLE}.user_attribute_map_first_name ;;
  }

  dimension: user_attribute_map_last_name {
    type: string
    sql: ${TABLE}.user_attribute_map_last_name ;;
  }

  dimension: user_attribute_map_ldap_id {
    type: string
    sql: ${TABLE}.user_attribute_map_ldap_id ;;
  }

  dimension: user_bind_base_dn {
    type: string
    sql: ${TABLE}.user_bind_base_dn ;;
  }

  dimension: user_custom_filter {
    type: string
    sql: ${TABLE}.user_custom_filter ;;
  }

  dimension: user_id_attribute_names {
    type: string
    sql: ${TABLE}.user_id_attribute_names ;;
  }

  dimension: user_objectclass {
    type: string
    sql: ${TABLE}.user_objectclass ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      encrypted_auth_username,
      user_attribute_map_first_name,
      user_attribute_map_last_name,
      ldap_config_default_new_user_group.count,
      ldap_config_default_new_user_role.count,
      ldap_group.count,
      ldap_user_attribute.count
    ]
  }
}
