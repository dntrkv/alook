view: ip_whitelist_rule {
  sql_table_name: looker_test.ip_whitelist_rule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: allow_core_api_traffic {
    type: yesno
    sql: ${TABLE}.allow_core_api_traffic ;;
  }

  dimension: allow_internal_api_traffic {
    type: yesno
    sql: ${TABLE}.allow_internal_api_traffic ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: delete_on_disable_support_access {
    type: yesno
    sql: ${TABLE}.delete_on_disable_support_access ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: subnet_mask {
    type: string
    sql: ${TABLE}.subnet_mask ;;
  }

  dimension: whitelists_bastion {
    type: yesno
    sql: ${TABLE}.whitelists_bastion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
