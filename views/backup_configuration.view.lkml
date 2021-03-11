view: backup_configuration {
  sql_table_name: looker_test.backup_configuration ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: custom_s3_bucket {
    type: string
    sql: ${TABLE}.custom_s3_bucket ;;
  }

  dimension: custom_s3_bucket_region {
    type: string
    sql: ${TABLE}.custom_s3_bucket_region ;;
  }

  dimension: encrypted_custom_s3_key {
    type: string
    sql: ${TABLE}.encrypted_custom_s3_key ;;
  }

  dimension: encrypted_custom_s3_secret {
    type: string
    sql: ${TABLE}.encrypted_custom_s3_secret ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
