view: aged_debt_view {
  sql_table_name: CC.AGED_DEBT_VIEW ;;

  dimension: account_sc {
    type: string
    sql: ${TABLE}."ACCOUNT_SC" ;;
  }

  dimension: bank_account_no {
    type: string
    sql: ${TABLE}."BANK_ACCOUNT_NO" ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}."BANK_NAME" ;;
  }

  dimension: c_desc {
    hidden: yes
    type: string
    sql: ${TABLE}."C_DESC" ;;
  }

  dimension: cust_key {
    type: string
    sql: ${TABLE}."CUST_KEY" ;;
  }

  dimension: customer_tier {
    type: string
    sql: ${TABLE}."CUSTOMER_TIER" ;;
  }

  dimension: e_desc {
    hidden: yes
    type: string
    sql: ${TABLE}."E_DESC" ;;
  }

  dimension: g_desc {
    type: string
    sql: ${TABLE}."G_DESC" ;;
  }

  dimension: h_desc {
    type: string
    sql: ${TABLE}."H_DESC" ;;
  }

  dimension: invoice_contact_email {
    hidden: yes
    type: string
    sql: ${TABLE}."INVOICE_CONTACT_EMAIL" ;;
  }

  dimension: invoice_method {
    hidden: yes
    type: string
    sql: ${TABLE}."INVOICE_METHOD" ;;
  }

  dimension: latest_receipt_amounts {
    hidden: yes
    type: number
    sql: ${TABLE}."LATEST_RECEIPT_AMOUNTS" ;;
  }

  dimension_group: latest_receipt {
    hidden: yes
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LATEST_RECEIPT_DATE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: office_code {
    hidden: yes
    type: string
    sql: ${TABLE}."OFFICE_CODE" ;;
  }

  dimension: period_amt_1 {
    hidden: yes
    type: number
    sql: ${TABLE}."PERIOD_AMT_1" ;;
  }

  dimension: period_amt_2 {
    hidden: yes
    type: number
    sql: ${TABLE}."PERIOD_AMT_2" ;;
  }

  dimension: period_amt_3 {
    hidden: yes
    type: number
    sql: ${TABLE}."PERIOD_AMT_3" ;;
  }

  dimension: period_amt_4 {
    hidden: yes
    type: number
    sql: ${TABLE}."PERIOD_AMT_4" ;;
  }

  dimension: period_amt_curr {
    hidden: yes
    type: number
    sql: ${TABLE}."PERIOD_AMT_CURR" ;;
  }

  dimension: pickup_contact {
    hidden: yes
    type: string
    sql: ${TABLE}."PICKUP_CONTACT" ;;
  }

  dimension: region {
    hidden: yes
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: sales_code_e {
    hidden: yes
    type: string
    sql: ${TABLE}."SALES_CODE_E" ;;
  }

  dimension: sales_code_f {
    hidden: yes
    type: string
    sql: ${TABLE}."SALES_CODE_F" ;;
  }

  dimension: sales_code_g {
    hidden: yes
    type: string
    sql: ${TABLE}."SALES_CODE_G" ;;
  }

  dimension: sales_code_h {
    hidden: yes
    type: string
    sql: ${TABLE}."SALES_CODE_H" ;;
  }

  dimension: split {
    hidden: yes
    type: string
    sql: ${TABLE}."SPLIT" ;;
  }

  dimension: unallocated_amt {
    hidden: yes
    type: number
    sql: ${TABLE}."UNALLOCATED_AMT" ;;
  }

  measure: count {
    type: count
    drill_fields: [bank_name, name]
  }
}
