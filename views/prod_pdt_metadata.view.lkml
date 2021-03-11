view: prod_pdt_metadata {
  sql_table_name: looker_test.prod_pdt_metadata ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: connection {
    type: string
    sql: ${TABLE}.connection ;;
  }

  dimension: increment_key {
    type: string
    sql: ${TABLE}.increment_key ;;
  }

  dimension: increment_offset {
    type: number
    sql: ${TABLE}.increment_offset ;;
  }

  dimension: is_incremental {
    type: yesno
    sql: ${TABLE}.is_incremental ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }

  dimension: models {
    type: string
    sql: ${TABLE}.models ;;
  }

  dimension: pdt_type {
    type: string
    sql: ${TABLE}.pdt_type ;;
  }

  dimension: persistence_str {
    type: string
    sql: ${TABLE}.persistence_str ;;
  }

  dimension: publish_as_db_view {
    type: yesno
    sql: ${TABLE}.publish_as_db_view ;;
  }

  dimension: source_url {
    type: string
    sql: ${TABLE}.source_url ;;
  }

  dimension: structure {
    type: string
    sql: ${TABLE}.structure ;;
  }

  dimension: view {
    type: string
    sql: ${TABLE}.view ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
