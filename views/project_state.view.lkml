view: project_state {
  sql_table_name: looker_test.project_state ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: all_unit_tests {
    type: string
    sql: ${TABLE}.all_unit_tests ;;
  }

  dimension: children {
    type: string
    sql: ${TABLE}.children ;;
  }

  dimension: git_status {
    type: string
    sql: ${TABLE}.git_status ;;
  }

  dimension: invalid_at {
    type: number
    sql: ${TABLE}.invalid_at ;;
  }

  dimension: invalid_flag {
    type: string
    sql: ${TABLE}.invalid_flag ;;
  }

  dimension: last_prototype_resolution {
    type: string
    sql: ${TABLE}.last_prototype_resolution ;;
  }

  dimension: manifest {
    type: string
    sql: ${TABLE}.manifest ;;
  }

  dimension: manifest_lockfile {
    type: string
    sql: ${TABLE}.manifest_lockfile ;;
  }

  dimension: manifest_unlocked {
    type: string
    sql: ${TABLE}.manifest_unlocked ;;
  }

  dimension: manifest_without_provided_constants {
    type: string
    sql: ${TABLE}.manifest_without_provided_constants ;;
  }

  dimension: marketplace_installation_metadata {
    type: string
    sql: ${TABLE}.marketplace_installation_metadata ;;
  }

  dimension: marketplace_package_metadata {
    type: string
    sql: ${TABLE}.marketplace_package_metadata ;;
  }

  dimension: model_names {
    type: string
    sql: ${TABLE}.model_names ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: name_hash {
    type: string
    sql: ${TABLE}.name_hash ;;
  }

  dimension: project_digest {
    type: string
    sql: ${TABLE}.project_digest ;;
  }

  dimension: project_spec {
    type: string
    sql: ${TABLE}.project_spec ;;
  }

  dimension: prototype_file_names {
    type: string
    sql: ${TABLE}.prototype_file_names ;;
  }

  dimension: root_project_id {
    type: string
    sql: ${TABLE}.root_project_id ;;
  }

  dimension: source_digest {
    type: string
    sql: ${TABLE}.source_digest ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, project_state_test_result.count]
  }
}
