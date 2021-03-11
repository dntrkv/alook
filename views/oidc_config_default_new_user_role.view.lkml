view: oidc_config_default_new_user_role {
  sql_table_name: looker_test.oidc_config_default_new_user_role ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: oidc_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oidc_config_id ;;
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
      oidc_config.id,
      oidc_config.user_attribute_map_first_name,
      oidc_config.user_attribute_map_last_name,
      role.id,
      role.name
    ]
  }
}
