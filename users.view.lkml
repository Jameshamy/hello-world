view: users {
  sql_table_name: production.users ;;

  dimension: context_traits_user_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.context_traits_user_id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
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

  dimension: context_traits_exp_adwords_promo_show_promo_code {
    type: string
    sql: ${TABLE}.context_traits_exp_adwords_promo_show_promo_code ;;
  }

  dimension: context_traits_exp_adwords_promo_use_50 {
    type: string
    sql: ${TABLE}.context_traits_exp_adwords_promo_use_50 ;;
  }

  dimension: context_traits_exp_design_variant_experiment_variant {
    type: string
    sql: ${TABLE}.context_traits_exp_design_variant_experiment_variant ;;
  }

  dimension: context_traits_first_name {
    type: string
    sql: ${TABLE}.context_traits_first_name ;;
  }

  dimension: context_traits_first_touch_utm_medium {
    type: string
    sql: ${TABLE}.context_traits_first_touch_utm_medium ;;
  }

  dimension: context_traits_last_name {
    type: string
    sql: ${TABLE}.context_traits_last_name ;;
  }

  dimension: context_traits_marketing_source {
    type: string
    sql: ${TABLE}.context_traits_marketing_source ;;
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

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
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

  dimension: total_orders_placed {
    type: number
    sql: ${TABLE}.total_orders_placed ;;
  }

  dimension: uniq_token {
    type: string
    sql: ${TABLE}.uniq_token ;;
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
      context_traits_user_id,
      context_library_name,
      first_name,
      last_name,
      name,
      context_campaign_name,
      context_traits_first_name,
      context_traits_last_name,
      context_traits_name,
      account_profile_page_view.count,
      added_product.count,
      aliases.count,
      answered_nudge.count,
      clicked_app_banner.count,
      clicked_just_call.count,
      clicked_landing_page_button.count,
      clicked_phone_number.count,
      clicked_start_my_order.count,
      completed_checkout_step.count,
      completed_order.count,
      confirmation_page_view.count,
      created_account.count,
      discount_offer.count,
      email_bounced.count,
      email_delivered.count,
      email_link_clicked.count,
      email_marked_as_spam.count,
      email_opened.count,
      experiment.count,
      filled_out_pickup_delivery_modal.count,
      homepage_wb_hide_click.count,
      homepage_wb_not_again_click.count,
      homepage_wb_reorder_click.count,
      homepage_wb_shown.count,
      identifies.count,
      logged_into_account.count,
      logged_out_of_account.count,
      menu_page_view.count,
      mobile_app_uninstalled.count,
      my_pizza_homepage_page_view.count,
      my_pizza_search_results_page_view.count,
      new_order_click.count,
      pages.count,
      partner_landin_page_view.count,
      partner_landing_page_view.count,
      phone_call_placed.count,
      push_delivered.count,
      referral.count,
      removed_product.count,
      reorder.count,
      reorder_click.count,
      reorder_message.count,
      saw_nudge.count,
      search_mypizza.count,
      search_result_click.count,
      searched_menu.count,
      skipped_app_interstitial.count,
      subscribed.count,
      tracks.count,
      unsubscribed.count,
      viewed_account_profile.count,
      viewed_cart.count,
      viewed_checkout_step.count,
      viewed_menu.count,
      viewed_pickup_delivery_modal.count,
      viewed_product.count,
      viewed_product_category.count
    ]
  }
}
