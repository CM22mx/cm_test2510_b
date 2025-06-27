view: order_summary_90_days {
  sql_table_name: `orders.order_summary_90_days` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: campaign_length {
    type: number
    sql: ${TABLE}.campaign_length ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_day_name {
    type: string
    sql: ${TABLE}.created_day_name ;;
  }
  dimension: created_hour {
    type: number
    sql: ${TABLE}.created_hour ;;
  }
#  dimension: created_month {
#    type: string
#    sql: ${TABLE}.created_month ;;
#  }
  dimension: created_weekday_number {
    type: number
    sql: ${TABLE}.created_weekday_number ;;
  }
  dimension: day_part {
    type: string
    sql: ${TABLE}.day_part ;;
  }
  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }
  dimension: final_price {
    type: number
    sql: ${TABLE}.final_price ;;
  }
  dimension: has_campaign {
    type: number
    sql: ${TABLE}.has_campaign ;;
  }
  dimension: is_cancelled {
    type: number
    sql: ${TABLE}.is_cancelled ;;
  }
  dimension: is_completed {
    type: number
    sql: ${TABLE}.is_completed ;;
  }
  dimension: net_price {
    type: number
    sql: ${TABLE}.net_price ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  dimension: status_campaign_combo {
    type: string
    sql: ${TABLE}.status_campaign_combo ;;
  }
  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
  }
  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }
  dimension: unit_price {
    type: number
    sql: ${TABLE}.unit_price ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, created_day_name, users.last_name, users.id, users.first_name]
  }
}
