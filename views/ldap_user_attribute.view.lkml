view: ldap_user_attribute {
  sql_table_name: looker_test.ldap_user_attribute ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: required {
    type: yesno
    sql: ${TABLE}.required ;;
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
      ldap_config.id,
      ldap_config.encrypted_auth_username,
      ldap_config.user_attribute_map_first_name,
      ldap_config.user_attribute_map_last_name,
      ldap_user_attribute_attribute.count
    ]
  }
}
