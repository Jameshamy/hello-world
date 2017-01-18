view: push_delivered {
  sql_table_name: production.push_delivered ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: content_available {
    type: yesno
    sql: ${TABLE}.content_available ;;
  }

  dimension: content_id {
    type: number
    sql: ${TABLE}.content_id ;;
  }

  dimension: context_integration_name {
    type: string
    sql: ${TABLE}.context_integration_name ;;
  }

  dimension: context_integration_version {
    type: string
    sql: ${TABLE}.context_integration_version ;;
  }

  dimension: context_library_name {
    type: string
    sql: ${TABLE}.context_library_name ;;
  }

  dimension: context_library_version {
    type: string
    sql: ${TABLE}.context_library_version ;;
  }

  dimension: context_traits_email {
    type: string
    sql: ${TABLE}.context_traits_email ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_text {
    type: string
    sql: ${TABLE}.event_text ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.message_id ;;
  }

  dimension: message_type_id {
    type: number
    sql: ${TABLE}.message_type_id ;;
  }

  dimension: original_timestamp {
    type: string
    sql: ${TABLE}.original_timestamp ;;
  }

  dimension: push_message {
    type: string
    sql: ${TABLE}.push_message ;;
  }

  dimension_group: received {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.received_at ;;
  }

  dimension: rendered_push_message {
    type: string
    sql: ${TABLE}.rendered_push_message ;;
  }

  dimension_group: sent {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sent_at ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }

  dimension: template_name {
    type: string
    sql: ${TABLE}.template_name ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: transactional_data {
    type: string
    sql: ${TABLE}.transactional_data ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: uuid {
    type: number
    value_format_name: id
    sql: ${TABLE}.uuid ;;
  }

  dimension_group: uuid_ts {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.uuid_ts ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.workflow_id ;;
  }

  dimension: workflow_name {
    type: string
    sql: ${TABLE}.workflow_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      campaign_name,
      context_integration_name,
      context_library_name,
      template_name,
      workflow_name,
      users.context_library_name,
      users.first_name,
      users.last_name,
      users.name,
      users.context_campaign_name,
      users.context_traits_first_name,
      users.context_traits_last_name,
      users.context_traits_name,
      users.context_traits_user_id
    ]
  }
}
