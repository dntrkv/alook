view: internal_help_resources_content {
  sql_table_name: looker_test.internal_help_resources_content ;;
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

  dimension: markdown_content {
    type: string
    sql: ${TABLE}.markdown_content ;;
  }

  dimension: menu_item_text {
    type: string
    sql: ${TABLE}.menu_item_text ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}.organization_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, organization_name]
  }
}
