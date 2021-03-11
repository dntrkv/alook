view: integration_hub {
  sql_table_name: looker_test.integration_hub ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: definition_json {
    type: string
    sql: ${TABLE}.definition_json ;;
  }

  dimension: encrypted_params {
    type: string
    sql: ${TABLE}.encrypted_params ;;
  }

  dimension: fetch_error_message {
    type: string
    sql: ${TABLE}.fetch_error_message ;;
  }

  dimension_group: fetched {
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
    sql: ${TABLE}.fetched_at ;;
  }

  dimension_group: legal_agreement_acceptance {
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
    sql: ${TABLE}.legal_agreement_acceptance_date ;;
  }

  dimension: legal_agreement_accepting_user_id {
    type: number
    sql: ${TABLE}.legal_agreement_accepting_user_id ;;
  }

  dimension: looker_hosted {
    type: yesno
    sql: ${TABLE}.looker_hosted ;;
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

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
