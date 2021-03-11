view: ldap_group_role {
  sql_table_name: looker_test.ldap_group_role ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ldap_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ldap_group_id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, ldap_group.id, ldap_group.name, role.id, role.name]
  }
}
