view: orders_sample {
  sql_table_name: `orders.orders_sample` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.created_at ;;
  }
  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  measure: count {
    type: count
    drill_fields: [id, orders.id]
  }
}
