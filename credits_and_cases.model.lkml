connection: "db"

# include all the views
include: "*.view"

datagroup: credits_and_cases_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hours"
}

persist_with: credits_and_cases_default_datagroup

explore: sf_case_history {

    join: crednote {
      view_label: "Credit Notes"
      relationship: one_to_one
      sql_on: ${crednote.customer_key} = ${sf_case_history.account_number} AND ${crednote.transaction_code} = ${sf_case_history.credit_reason_note_code} ;;
    }

}
