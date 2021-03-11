view: theme {
  sql_table_name: looker_test.theme ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: begin {
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
    sql: ${TABLE}.begin_at ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: name_key {
    type: string
    sql: ${TABLE}.name_key ;;
  }

  dimension: settings_json {
    type: string
    sql: ${TABLE}.settings_json ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
