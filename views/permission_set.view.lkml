view: permission_set {
  sql_table_name: looker_test.permission_set ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: built_in {
    type: yesno
    sql: ${TABLE}.built_in ;;
  }

  dimension: embed {
    type: yesno
    sql: ${TABLE}.embed ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: permissions {
    type: string
    sql: ${TABLE}.permissions ;;
  }

  dimension: unlimited {
    type: yesno
    sql: ${TABLE}.unlimited ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, role.count]
  }
}
