view: saml_config_default_new_user_role {
  sql_table_name: looker_test.saml_config_default_new_user_role ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }

  dimension: saml_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.saml_config_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      saml_config.id,
      saml_config.user_attribute_map_first_name,
      saml_config.user_attribute_map_last_name,
      role.id,
      role.name
    ]
  }
}
