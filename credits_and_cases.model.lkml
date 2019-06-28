connection: "db"

# include all the views
include: "*.view"

datagroup: credits_and_cases_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hours"
}

persist_with: credits_and_cases_default_datagroup


explore: sf_case_history {
    persist_with: credits_and_cases_default_datagroup
    label: "Cases"



join: aged_debt_view {
  view_label: "Customer Details"
  relationship:  one_to_one
  sql_on: ${aged_debt_view.cust_key} = ${sf_case_history.account_number} ;;
}

join: crednote {
    view_label: "Credit Details"
    relationship:  one_to_one
    sql_on: ${crednote.customer_key} = ${sf_case_history.account_number} ;;
  }

}
