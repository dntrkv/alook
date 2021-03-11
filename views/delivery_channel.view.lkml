view: delivery_channel {
  sql_table_name: looker_test.delivery_channel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action_hub_form_params_json {
    type: string
    sql: ${TABLE}.action_hub_form_params_json ;;
  }

  dimension: action_hub_integration_id {
    type: string
    sql: ${TABLE}.action_hub_integration_id ;;
  }

  dimension: channel_destination_type {
    type: string
    sql: ${TABLE}.channel_destination_type ;;
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

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: owner_user_id {
    type: number
    sql: ${TABLE}.owner_user_id ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, alert_destination.count]
  }
}
