view: sf_case_history {
  sql_table_name: CC.SF_CASE_HISTORY ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_number {
    primary_key: yes
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: case_id {
    type: string
    sql: ${TABLE}."CASE_ID" ;;
  }

  dimension: case_number {
    type: string
    sql: ${TABLE}."CASE_NUMBER" ;;
  }

  dimension: case_reason_code {
    type: string
    sql: ${TABLE}."CASE_REASON_CODE" ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}."CLOSED_DATE" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CREATED_BY_ID" ;;
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
    sql: ${TABLE}."CREATED_DATE" ;;
  }

  dimension: credit_amount_include_vat {
    type: number
    sql: ${TABLE}."CREDIT_AMOUNT_INCLUDE_VAT" ;;
  }

  dimension: credit_reason_note_code {
    type: string
    sql: ${TABLE}."CREDIT_REASON_NOTE_CODE" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}."LAST_MODIFIED_BY_ID" ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}."LAST_MODIFIED_DATE" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."ORIGIN" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}."REASON" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."SUBJECT" ;;
  }

  dimension: sugar_case_number {
    type: string
    sql: ${TABLE}."SUGAR_CASE_NUMBER" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }

  measure: total_cases_by_source {
    type: count_distinct
    filters: {
      field: origin
      value: "Source-type"
    }
    sql: ${account_number} ;;
    drill_fields: [sf_case_history.account_number,account_name,origin,created_date,case_number,credit_amount_include_vat]
  }


}
