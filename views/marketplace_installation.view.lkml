view: marketplace_installation {
  sql_table_name: looker_test.marketplace_installation ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accepted_entitlement_ids {
    type: string
    sql: ${TABLE}.accepted_entitlement_ids ;;
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

  dimension_group: entitlements_accepted {
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
    sql: ${TABLE}.entitlements_accepted_at ;;
  }

  dimension: entitlements_accepted_by_user_id {
    type: number
    sql: ${TABLE}.entitlements_accepted_by_user_id ;;
  }

  dimension: git_sha {
    type: string
    sql: ${TABLE}.git_sha ;;
  }

  dimension: git_uri {
    type: string
    sql: ${TABLE}.git_uri ;;
  }

  dimension_group: license_accepted {
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
    sql: ${TABLE}.license_accepted_at ;;
  }

  dimension: license_accepted_by_user_id {
    type: number
    sql: ${TABLE}.license_accepted_by_user_id ;;
  }

  dimension: license_accepted_hash {
    type: string
    sql: ${TABLE}.license_accepted_hash ;;
  }

  dimension: marketplace_listing_id {
    type: string
    sql: ${TABLE}.marketplace_listing_id ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
