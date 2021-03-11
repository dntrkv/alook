view: whitelabel_configuration {
  sql_table_name: looker_test.whitelabel_configuration ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: allow_looker_links {
    type: yesno
    sql: ${TABLE}.allow_looker_links ;;
  }

  dimension: allow_looker_mentions {
    type: yesno
    sql: ${TABLE}.allow_looker_mentions ;;
  }

  dimension: custom_welcome_email_advanced {
    type: yesno
    sql: ${TABLE}.custom_welcome_email_advanced ;;
  }

  dimension: default_title {
    type: string
    sql: ${TABLE}.default_title ;;
  }

  dimension: favicon_file {
    type: string
    sql: ${TABLE}.favicon_file ;;
  }

  dimension: logo_file {
    type: string
    sql: ${TABLE}.logo_file ;;
  }

  dimension: show_docs {
    type: yesno
    sql: ${TABLE}.show_docs ;;
  }

  dimension: show_email_sub_options {
    type: yesno
    sql: ${TABLE}.show_email_sub_options ;;
  }

  dimension: show_help_menu {
    type: yesno
    sql: ${TABLE}.show_help_menu ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
