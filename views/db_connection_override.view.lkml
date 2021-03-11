view: db_connection_override {
  sql_table_name: looker_test.db_connection_override ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: after_connect_statements {
    type: string
    sql: ${TABLE}.after_connect_statements ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}.context ;;
  }

  dimension: database {
    type: string
    sql: ${TABLE}.`database` ;;
  }

  dimension: db_connection_certificate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.db_connection_certificate_id ;;
  }

  dimension: db_connection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.db_connection_id ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: integrity_hash {
    type: string
    sql: ${TABLE}.integrity_hash ;;
  }

  dimension: jdbc_additional_params {
    type: string
    sql: ${TABLE}.jdbc_additional_params ;;
  }

  dimension: misc_field {
    type: string
    sql: ${TABLE}.misc_field ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }

  dimension: schema {
    type: string
    sql: ${TABLE}.`schema` ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      username,
      db_connection.id,
      db_connection.name,
      db_connection.username,
      db_connection.ssh_username,
      db_connection.tmp_db_name,
      db_connection_certificate.id
    ]
  }
}
