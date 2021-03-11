view: saml_config {
  sql_table_name: looker_test.saml_config ;;
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

  dimension: allowed_clock_drift {
    type: number
    sql: ${TABLE}.allowed_clock_drift ;;
  }

  dimension: alternate_email_login_allowed {
    type: yesno
    sql: ${TABLE}.alternate_email_login_allowed ;;
  }

  dimension: auth_requires_role {
    type: yesno
    sql: ${TABLE}.auth_requires_role ;;
  }

  dimension: bypass_login_page {
    type: yesno
    sql: ${TABLE}.bypass_login_page ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension: groups_attribute {
    type: string
    sql: ${TABLE}.groups_attribute ;;
  }

  dimension: groups_finder_type {
    type: string
    sql: ${TABLE}.groups_finder_type ;;
  }

  dimension: groups_member_value {
    type: string
    sql: ${TABLE}.groups_member_value ;;
  }

  dimension: idp_audience {
    type: string
    sql: ${TABLE}.idp_audience ;;
  }

  dimension: idp_cert {
    type: string
    sql: ${TABLE}.idp_cert ;;
  }

  dimension: idp_issuer {
    type: string
    sql: ${TABLE}.idp_issuer ;;
  }

  dimension: idp_url {
    type: string
    sql: ${TABLE}.idp_url ;;
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

  dimension: new_user_migration_types {
    type: string
    sql: ${TABLE}.new_user_migration_types ;;
  }

  dimension: set_roles_from_groups {
    type: yesno
    sql: ${TABLE}.set_roles_from_groups ;;
  }

  dimension_group: test_expires {
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
    sql: ${TABLE}.test_expires_at ;;
  }

  dimension: test_slug {
    type: string
    sql: ${TABLE}.test_slug ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      user_attribute_map_first_name,
      user_attribute_map_last_name,
      saml_config_default_new_user_group.count,
      saml_config_default_new_user_role.count,
      saml_group.count,
      saml_user_attribute.count
    ]
  }
}
