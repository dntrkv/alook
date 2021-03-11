view: ldap_user_attribute_attribute {
  sql_table_name: looker_test.ldap_user_attribute_attribute ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ldap_user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ldap_user_attribute_id ;;
  }

  dimension: user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_attribute_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, ldap_user_attribute.id, ldap_user_attribute.name, user_attribute.id]
  }
}
