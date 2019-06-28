view: credits_with_tc {
  sql_table_name: CC.CREDITS_WITH_TC ;;

  dimension: am {
    type: string
    sql: ${TABLE}."AM" ;;
  }

  dimension: archive {
    type: string
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: cc {
    type: string
    sql: ${TABLE}."CC" ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}."CREDITS" ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}."CUSTOMER_KEY" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CUSTOMER_NAME" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."DATE" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: sc {
    type: string
    sql: ${TABLE}."SC" ;;
  }

  dimension: sp {
    type: string
    sql: ${TABLE}."SP" ;;
  }

  dimension: split {
    type: string
    sql: ${TABLE}."SPLIT" ;;
  }

  dimension: system_ccg {
    type: string
    sql: ${TABLE}."system ccg" ;;
  }

  dimension: transaction_code {
    type: string
    sql: ${TABLE}."TRANSACTION_CODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
