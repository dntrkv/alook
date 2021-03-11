view: oidc_group_role {
  sql_table_name: looker_test.oidc_group_role ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: oidc_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oidc_group_id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, oidc_group.id, oidc_group.name, role.id, role.name]
  }
}
