view: space {
  sql_table_name: looker_test.space ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: content_metadata_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.content_metadata_id ;;
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

  dimension: creator_id {
    type: number
    sql: ${TABLE}.creator_id ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: is_embed {
    type: yesno
    sql: ${TABLE}.is_embed ;;
  }

  dimension: is_embed_shared_root {
    type: yesno
    sql: ${TABLE}.is_embed_shared_root ;;
  }

  dimension: is_embed_users_root {
    type: yesno
    sql: ${TABLE}.is_embed_users_root ;;
  }

  dimension: is_personal {
    type: yesno
    sql: ${TABLE}.is_personal ;;
  }

  dimension: is_personal_descendant {
    type: yesno
    sql: ${TABLE}.is_personal_descendant ;;
  }

  dimension: is_shared_root {
    type: yesno
    sql: ${TABLE}.is_shared_root ;;
  }

  dimension: is_users_root {
    type: yesno
    sql: ${TABLE}.is_users_root ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      content_metadata.id,
      content_metadata.count,
      dashboard.count,
      look.count,
      space_user.count
    ]
  }
}
