view: search_result_click {
  sql_table_name: production.search_result_click ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: context_client_id {
    type: string
    sql: ${TABLE}.context_client_id ;;
  }

  dimension: context_customer_id {
    type: number
    sql: ${TABLE}.context_customer_id ;;
  }

  dimension: context_customer_uuid {
    type: string
    sql: ${TABLE}.context_customer_uuid ;;
  }

  dimension: context_ip {
    type: string
    sql: ${TABLE}.context_ip ;;
  }

  dimension: context_library_name {
    type: string
    sql: ${TABLE}.context_library_name ;;
  }

  dimension: context_library_version {
    type: string
    sql: ${TABLE}.context_library_version ;;
  }

  dimension: context_page_path {
    type: string
    sql: ${TABLE}.context_page_path ;;
  }

  dimension: context_page_referrer {
    type: string
    sql: ${TABLE}.context_page_referrer ;;
  }

  dimension: context_page_search {
    type: string
    sql: ${TABLE}.context_page_search ;;
  }

  dimension: context_page_title {
    type: string
    sql: ${TABLE}.context_page_title ;;
  }

  dimension: context_page_url {
    type: string
    sql: ${TABLE}.context_page_url ;;
  }

  dimension: context_rails_session_id {
    type: string
    sql: ${TABLE}.context_rails_session_id ;;
  }

  dimension: context_traits_anonymous_id {
    type: string
    sql: ${TABLE}.context_traits_anonymous_id ;;
  }

  dimension: context_traits_client_id {
    type: string
    sql: ${TABLE}.context_traits_client_id ;;
  }

  dimension: context_traits_customer_id {
    type: number
    sql: ${TABLE}.context_traits_customer_id ;;
  }

  dimension: context_traits_customer_uuid {
    type: string
    sql: ${TABLE}.context_traits_customer_uuid ;;
  }

  dimension: context_traits_rails_session_id {
    type: string
    sql: ${TABLE}.context_traits_rails_session_id ;;
  }

  dimension: context_traits_visit_id {
    type: string
    sql: ${TABLE}.context_traits_visit_id ;;
  }

  dimension: context_user_agent {
    type: string
    sql: ${TABLE}.context_user_agent ;;
  }

  dimension: context_visit_id {
    type: string
    sql: ${TABLE}.context_visit_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_uuid {
    type: string
    sql: ${TABLE}.customer_uuid ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_text {
    type: string
    sql: ${TABLE}.event_text ;;
  }

  dimension_group: original_timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.original_timestamp ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: rails_session_id {
    type: string
    sql: ${TABLE}.rails_session_id ;;
  }

  dimension_group: received {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.received_at ;;
  }

  dimension: search_address {
    type: string
    sql: ${TABLE}.search_address ;;
  }

  dimension_group: sent {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sent_at ;;
  }

  dimension: shop_id {
    type: number
    sql: ${TABLE}.shop_id ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.timestamp ;;
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

  dimension: visit_id {
    type: string
    sql: ${TABLE}.visit_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      context_library_name,
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
