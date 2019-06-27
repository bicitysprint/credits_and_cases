connection: "db"

# include all the views
include: "*.view"

datagroup: credits_and_cases_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hours"
}

persist_with: credits_and_cases_default_datagroup

explore: sf_case_history {

}
