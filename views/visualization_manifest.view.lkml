view: visualization_manifest {
  sql_table_name: looker_test.visualization_manifest ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
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

  dimension: dependencies {
    type: string
    sql: ${TABLE}.dependencies ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: main {
    type: string
    sql: ${TABLE}.main ;;
  }

  dimension: main_sri_hash {
    type: string
    sql: ${TABLE}.main_sri_hash ;;
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

  dimension: vis_id {
    type: string
    sql: ${TABLE}.vis_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
