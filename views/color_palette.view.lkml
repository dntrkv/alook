view: color_palette {
  sql_table_name: looker_test.color_palette ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: color_collection_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.color_collection_id ;;
  }

  dimension: color_options {
    type: string
    sql: ${TABLE}.color_options ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, color_collection.id]
  }
}
