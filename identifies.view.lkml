view: identifies {
  sql_table_name: production.identifies ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: context_campaign_content {
    type: string
    sql: ${TABLE}.context_campaign_content ;;
  }

  dimension: context_campaign_medium {
    type: string
    sql: ${TABLE}.context_campaign_medium ;;
  }

  dimension: context_campaign_name {
    type: string
    sql: ${TABLE}.context_campaign_name ;;
  }

  dimension: context_campaign_source {
    type: string
    sql: ${TABLE}.context_campaign_source ;;
  }

  dimension: context_google_analytics_client_id {
    type: string
    sql: ${TABLE}.context_google_analytics_client_id ;;
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

  dimension: context_traits_address {
    type: string
    sql: ${TABLE}.context_traits_address ;;
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

  dimension: context_traits_email {
    type: string
    sql: ${TABLE}.context_traits_email ;;
  }

  dimension: context_traits_first_name {
    type: string
    sql: ${TABLE}.context_traits_first_name ;;
  }

  dimension: context_traits_last_name {
    type: string
    sql: ${TABLE}.context_traits_last_name ;;
  }

  dimension: context_traits_mypizza_user_id {
    type: string
    sql: ${TABLE}.context_traits_mypizza_user_id ;;
  }

  dimension: context_traits_name {
    type: string
    sql: ${TABLE}.context_traits_name ;;
  }

  dimension: context_traits_phone {
    type: string
    sql: ${TABLE}.context_traits_phone ;;
  }

  dimension: context_traits_rails_session_id {
    type: string
    sql: ${TABLE}.context_traits_rails_session_id ;;
  }

  dimension: context_traits_user_id {
    type: string
    sql: ${TABLE}.context_traits_user_id ;;
  }

  dimension: context_traits_visit_id {
    type: string
    sql: ${TABLE}.context_traits_visit_id ;;
  }

  dimension: context_user_agent {
    type: string
    sql: ${TABLE}.context_user_agent ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_uuid {
    type: string
    sql: ${TABLE}.customer_uuid ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: exp_adwords_promo_show_promo_code {
    type: string
    sql: ${TABLE}.exp_adwords_promo_show_promo_code ;;
  }

  dimension: exp_adwords_promo_use_50 {
    type: string
    sql: ${TABLE}.exp_adwords_promo_use_50 ;;
  }

  dimension: exp_design_variant_experiment_variant {
    type: string
    sql: ${TABLE}.exp_design_variant_experiment_variant ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: first_touch_utm_medium {
    type: string
    sql: ${TABLE}.first_touch_utm_medium ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: last_shop_ordered_from {
    type: string
    sql: ${TABLE}.last_shop_ordered_from ;;
  }

  dimension: last_shop_ordered_from_url {
    type: string
    sql: ${TABLE}.last_shop_ordered_from_url ;;
  }

  dimension: marketing_source {
    type: string
    sql: ${TABLE}.marketing_source ;;
  }

  dimension: mypizza_user_id {
    type: string
    sql: ${TABLE}.mypizza_user_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: original_timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.original_timestamp ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
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

  dimension_group: sent {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sent_at ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: total_orders_placed {
    type: number
    sql: ${TABLE}.total_orders_placed ;;
  }

  dimension: uniq_token {
    type: string
    sql: ${TABLE}.uniq_token ;;
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

  dimension: visit_token {
    type: string
    sql: ${TABLE}.visit_token ;;
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
      first_name,
      last_name,
      name,
      context_campaign_name,
      context_traits_first_name,
      context_traits_last_name,
      context_traits_name,
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
