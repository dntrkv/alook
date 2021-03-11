view: oauth_client_app {
  sql_table_name: looker_test.oauth_client_app ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: client_guid {
    type: string
    sql: ${TABLE}.client_guid ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }

  dimension: redirect_uri {
    type: string
    sql: ${TABLE}.redirect_uri ;;
  }

  dimension_group: tokens_invalid_before {
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
    sql: ${TABLE}.tokens_invalid_before ;;
  }

  measure: count {
    type: count
    drill_fields: [id, display_name, group.name, group.external_group_id, oauth_client_app_user_activation.count]
  }
}
