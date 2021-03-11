view: proposed_group {
  sql_table_name: looker_test.proposed_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: base_group_id {
    type: number
    sql: ${TABLE}.base_group_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
      ldap_group.count,
      oidc_group.count,
      proposed_group_role.count,
      saml_group.count
    ]
  }
}
