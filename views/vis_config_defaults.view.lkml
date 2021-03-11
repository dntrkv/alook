view: vis_config_defaults {
  sql_table_name: looker_test.vis_config_defaults ;;
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

  dimension: defaults {
    type: string
    sql: ${TABLE}.defaults ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  dimension: vis_type {
    type: string
    sql: ${TABLE}.vis_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
