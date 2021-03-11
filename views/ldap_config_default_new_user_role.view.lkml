view: ldap_config_default_new_user_role {
  sql_table_name: looker_test.ldap_config_default_new_user_role ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ldap_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ldap_config_id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      ldap_config.id,
      ldap_config.encrypted_auth_username,
      ldap_config.user_attribute_map_first_name,
      ldap_config.user_attribute_map_last_name,
      role.id,
      role.name
    ]
  }
}
