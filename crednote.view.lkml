view: crednote {
  sql_table_name: CC.CREDNOTE ;;

  dimension: address_1 {
    type: string
    sql: ${TABLE}."ADDRESS_1" ;;
  }

  dimension: address_2 {
    type: string
    sql: ${TABLE}."ADDRESS_2" ;;
  }

  dimension: address_3 {
    type: string
    sql: ${TABLE}."ADDRESS_3" ;;
  }

  dimension: address_4 {
    type: string
    sql: ${TABLE}."ADDRESS_4" ;;
  }

  dimension: adj_period_1 {
    type: number
    sql: ${TABLE}."ADJ_PERIOD_1" ;;
  }

  dimension: adj_period_2 {
    type: number
    sql: ${TABLE}."ADJ_PERIOD_2" ;;
  }

  dimension: adj_period_3 {
    type: number
    sql: ${TABLE}."ADJ_PERIOD_3" ;;
  }

  dimension: adj_period_4 {
    type: number
    sql: ${TABLE}."ADJ_PERIOD_4" ;;
  }

  dimension: adj_period_curr {
    type: number
    sql: ${TABLE}."ADJ_PERIOD_CURR" ;;
  }

  dimension: amt_1 {
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: applied_to_pay {
    type: string
    sql: ${TABLE}."APPLIED_TO_PAY" ;;
  }

  dimension: applied_to_stmt {
    type: string
    sql: ${TABLE}."APPLIED_TO_STMT" ;;
  }

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: authorisation_no {
    type: string
    sql: ${TABLE}."AUTHORISATION_NO" ;;
  }

  dimension: card_expiry_date {
    type: string
    sql: ${TABLE}."CARD_EXPIRY_DATE" ;;
  }

  dimension: card_name {
    type: string
    sql: ${TABLE}."CARD_NAME" ;;
  }

  dimension: card_number {
    type: string
    sql: ${TABLE}."CARD_NUMBER" ;;
  }

  dimension: card_type {
    type: string
    sql: ${TABLE}."CARD_TYPE" ;;
  }

  dimension: cnote_key {
    type: number
    sql: ${TABLE}."CNOTE_KEY" ;;
  }

  dimension_group: creation_date {
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
    sql: ${TABLE}."CREATION_DATE" ;;
  }

  dimension_group: creation_time {
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
    sql: ${TABLE}."CREATION_TIME" ;;
  }

  dimension: credit_note_amt {
    type: number
    sql: ${TABLE}."CREDIT_NOTE_AMT" ;;
  }

  dimension_group: credit_note {
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
    sql: ${TABLE}."CREDIT_NOTE_DATE" ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}."CUSTOMER_KEY" ;;
  }

  dimension: cv2_number {
    type: string
    sql: ${TABLE}."CV2_NUMBER" ;;
  }

  dimension: data_source {
    type: number
    sql: ${TABLE}."DATA_SOURCE" ;;
  }

  dimension_group: date_1 {
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
    sql: ${TABLE}."DATE_1" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: driver_amount {
    type: number
    sql: ${TABLE}."DRIVER_AMOUNT" ;;
  }

  dimension: driver_key {
    type: string
    sql: ${TABLE}."DRIVER_KEY" ;;
  }

  dimension: flag_1 {
    type: string
    sql: ${TABLE}."FLAG_1" ;;
  }

  dimension: flag_2 {
    type: string
    sql: ${TABLE}."FLAG_2" ;;
  }

  dimension: internal_ref {
    type: string
    sql: ${TABLE}."INTERNAL_REF" ;;
  }

  dimension: invoice_created {
    type: string
    sql: ${TABLE}."INVOICE_CREATED" ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}."INVOICE_NUMBER" ;;
  }

  dimension: issue_number {
    type: number
    sql: ${TABLE}."ISSUE_NUMBER" ;;
  }

  dimension: job_number {
    type: number
    sql: ${TABLE}."JOB_NUMBER" ;;
  }

  dimension: num_1 {
    type: number
    sql: ${TABLE}."NUM_1" ;;
  }

  dimension: num_2 {
    type: number
    sql: ${TABLE}."NUM_2" ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}."OPERATOR" ;;
  }

  dimension: outstanding_amt {
    type: number
    sql: ${TABLE}."OUTSTANDING_AMT" ;;
  }

  dimension: payment_flag {
    type: string
    sql: ${TABLE}."PAYMENT_FLAG" ;;
  }

  dimension_group: period {
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
    sql: ${TABLE}."PERIOD_DATE" ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}."POSTCODE" ;;
  }

  dimension: posted_period {
    type: number
    sql: ${TABLE}."POSTED_PERIOD" ;;
  }

  dimension: posted_year {
    type: number
    sql: ${TABLE}."POSTED_YEAR" ;;
  }

  dimension: rec_period {
    type: number
    sql: ${TABLE}."REC_PERIOD" ;;
  }

  dimension: rec_year {
    type: number
    sql: ${TABLE}."REC_YEAR" ;;
  }

  dimension: reference_number {
    type: string
    sql: ${TABLE}."REFERENCE_NUMBER" ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}."START_DATE" ;;
  }

  dimension_group: time_1 {
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
    sql: ${TABLE}."TIME_1" ;;
  }

  dimension: transaction_code {
    type: string
    sql: ${TABLE}."TRANSACTION_CODE" ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}."UUID" ;;
  }

  measure: count {
    type: count
    drill_fields: [card_name]
  }
}
