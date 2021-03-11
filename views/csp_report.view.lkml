view: csp_report {
  sql_table_name: looker_test.csp_report ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: blocked_uri {
    type: string
    sql: ${TABLE}.blocked_uri ;;
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

  dimension: document_uri {
    type: string
    sql: ${TABLE}.document_uri ;;
  }

  dimension: original_policy {
    type: string
    sql: ${TABLE}.original_policy ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}.referrer ;;
  }

  dimension: violated_directive {
    type: string
    sql: ${TABLE}.violated_directive ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
