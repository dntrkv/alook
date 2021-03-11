view: user_attribute_v2 {
  sql_table_name: looker_test.user_attribute_v2 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: default_value {
    type: string
    sql: ${TABLE}.default_value ;;
  }

  dimension: hidden_value_domain_whitelist {
    type: string
    sql: ${TABLE}.hidden_value_domain_whitelist ;;
  }

  dimension: is_permanent {
    type: yesno
    sql: ${TABLE}.is_permanent ;;
  }

  dimension: is_system {
    type: yesno
    sql: ${TABLE}.is_system ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: user_can_edit {
    type: yesno
    sql: ${TABLE}.user_can_edit ;;
  }

  dimension: user_can_view {
    type: yesno
    sql: ${TABLE}.user_can_view ;;
  }

  dimension: value_is_hidden {
    type: yesno
    sql: ${TABLE}.value_is_hidden ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
