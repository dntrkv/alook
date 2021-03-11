view: saml_group_role {
  sql_table_name: looker_test.saml_group_role ;;
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

  dimension: saml_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.saml_group_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, saml_group.id, saml_group.name, role.id, role.name]
  }
}
