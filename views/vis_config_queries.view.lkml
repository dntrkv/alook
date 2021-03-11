view: vis_config_queries {
  sql_table_name: looker_test.vis_config_queries ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: result_maker_slug {
    type: string
    sql: ${TABLE}.result_maker_slug ;;
  }

  dimension: vis_config_slug {
    type: string
    sql: ${TABLE}.vis_config_slug ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
