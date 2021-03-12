connection: "bbh-prod"

# # include all views in this project
# include: "views/**/*.view.lkml"

# # include all dashboards in this project
# include: "dashboards/**/*.dashboard"

# # include all tests in this project
# include: "tests/**/*.lkml"

datagroup: medfusion_datagroup {
  max_cache_age: "168 hours"  # 1 week
  sql_trigger:
    SELECT -- ONLY UPDATE THE DATE AFTER WE REACH THE GOAL HOUR
      CASE
        -- SHOW TODAY'S DATE ONLY WHEN WE'VE ARRIVED AT THE TARGET HOUR (IN 24H FORMAT)
        WHEN EXTRACT(HOUR FROM CURRENT_TIME('America/New_York')) >= @{medfusion_datagroup_refresh_hour} THEN CURRENT_DATE('America/New_York')
        -- OTHERWISE, STICK WITH YESTERDAY'S DATE
        ELSE DATE_SUB(CURRENT_DATE('America/New_York'), INTERVAL 1 DAY)
      END
  ;;
}

# # Custom Tables: Final analyses
# explore: alert_to_basic {
#   description: "Selects from pump_events. Determines alerts that were followed by a basic infusion"
#   always_filter: {
#     filters: {
#       field: date_filter
#       value: "6 months"
#     }
#   }
# }

# explore: pump_events {
#   description: "Selects from events_remodeled, sessions, and bad_infusions tables to reshape event data into a final, BH-defined schema. Only includes infusion IDs that started and/or alerted. General serves as the event-level basis for all downstream analyses"
#   always_filter: {
#     filters: {
#       field: date_filter
#       value: "6 months"
#     }
#   }
# }

# # Custom Tables: Data processing

# explore: bad_infusions {
#   description: "Filters out infusions from events_remodeled that contain corrupt/nonsensible data. The pump_events derived table selects from bad_infusions in the WHERE clause to prevent these infusions from entering final analyses"
# }

# explore: denormalized {
#   description: "Raw event data from the Medfusion fact tables, combined with values from Medfusion dim tables and custom data processing tables. Uses joins to populate values or define new fields, but with no transformation/remodeling between records"
#   always_filter: {
#     filters: {
#       field: date_filter
#       value: "6 months"
#     }
#   }
# }

# explore: event_mapping {
#   description: "Defines Medfusion events (EventMessage) from dim_event_message as start or stop events. Used by the denormalized table to label events for downstream analysis"
# }

# explore: events_remodeled {
#   description: "Selects from denormalized, infusions, and raw alarm-related Medfusion tables. Consolidates, redefines, and populates values, including windowed aggs and values across multiple records"
#   always_filter: {
#     filters: {
#       field: date_filter
#       value: "6 months"
#     }
#   }
# }

# explore: infusions {
#   description: "Selects from the denormalized table to correctly assign infusion_ids to groups of records and to determine infusion-wide statistics. Utilized by events_remodeled"
# }

# explore: sessions {
#   description: "Selects from events_remodeled. Assigns a session ID to infusions that ran consecutively on the same pump, to better identify infusions that belonged to the same patient. Utilized by pump_events"
# }




# # Event/summary/fact tables

# explore: fact_alarm {
#   join: dim_alarm_type {
#     relationship: many_to_one
#     sql_on: fact_alarm.AlarmTypeKey = dim_alarm_type.AlarmTypeKey
#       ;;
#   }
#   join: dim_drug_program {
#     relationship: many_to_one
#     sql_on: ${fact_alarm.drug_program_key} = ${dim_drug_program.drug_program_key} ;;
#   }
#   join: dim_profile {
#     relationship: many_to_one
#     sql_on: ${fact_alarm.profile_key} = ${dim_profile.profile_key} ;;
#   }
# }

# explore: fact_event {
#   join: event_mapping {
#     relationship: many_to_one
#     sql_on: ${fact_event.event_message_key} = ${event_mapping.event_key} ;;
#   }
#   join: fact_event_detail {
#     relationship: one_to_one
#     sql_on: ${fact_event.event_key} = ${fact_event_detail.event_key} ;;
#   }
#   join: dim_drug_program {
#     relationship: many_to_one
#     sql_on: ${fact_event.drug_program_key} =  ${dim_drug_program.drug_program_key};;
#   }
#   join: dim_event_type {
#     relationship: many_to_one
#     sql_on: ${fact_event.event_type_key} = ${dim_event_type.event_type_key} ;;
#   }
#   join: concentration_unit {
#     from: dim_measurement_unit
#     relationship: many_to_one
#     sql_on: ${fact_event.concentration_measurement_unit_key} = ${concentration_unit.measurement_unit_key} ;;
#   }
#   join: delivery_unit {
#     from: dim_measurement_unit
#     relationship: many_to_one
#     sql_on: ${fact_event.delivery_measurement_unit_key} = ${delivery_unit.measurement_unit_key} ;;
#   }
#   join: bolus_dose_unit {
#     from: dim_measurement_unit
#     relationship: many_to_one
#     sql_on: ${fact_event.bolus_dose_measurement_unit_key} = ${bolus_dose_unit.measurement_unit_key} ;;
#   }
#   join: loading_dose_unit {
#     from: dim_measurement_unit
#     relationship: many_to_one
#     sql_on: ${fact_event.loading_dose_measurement_unit_key} = ${loading_dose_unit.measurement_unit_key} ;;
#   }
#   join: parameter_unit {
#     from: dim_measurement_unit
#     relationship: many_to_one
#     sql_on: ${fact_event.parameter_measurement_unit_key} = ${parameter_unit.measurement_unit_key} ;;
#   }
#   join: dim_parameter {
#     relationship: many_to_one
#     sql_on: ${fact_event.parameter_key} = ${dim_parameter.parameter_key} ;;
#   }
#   join: lower_hard_limit {
#     from: dim_misc
#     relationship: one_to_one
#     sql_on: ${fact_event.lower_hard_limit_misc_key} = ${lower_hard_limit.misc_key} ;;
#   }
#   join: lower_soft_limit {
#     from: dim_misc
#     relationship: one_to_one
#     sql_on: ${fact_event.lower_soft_limit_misc_key} = ${lower_soft_limit.misc_key} ;;
#   }
#   join: upper_hard_limit {
#     from: dim_misc
#     relationship: one_to_one
#     sql_on: ${fact_event.upper_hard_limit_misc_key} = ${upper_hard_limit.misc_key} ;;
#   }
#   join: upper_soft_limit {
#     from: dim_misc
#     relationship: one_to_one
#     sql_on: ${fact_event.upper_soft_limit_misc_key} =  ${upper_soft_limit.misc_key} ;;
#   }
#   join: entered_value {
#     from: dim_misc
#     relationship: one_to_one
#     sql_on: ${fact_event.entered_value_misc_key} =  ${entered_value.misc_key} ;;
#   }
#   join: failed_value {
#     from: dim_misc
#     relationship: one_to_one
#     sql_on: ${fact_event.failed_value_misc_key} =  ${failed_value.misc_key} ;;
#   }
#   join: final_value {
#     from: dim_misc
#     relationship: one_to_one
#     sql_on: ${fact_event.final_value_misc_key} =  ${final_value.misc_key} ;;
#   }
#   join: original_value {
#     from: dim_misc
#     relationship: one_to_one
#     sql_on: ${fact_event.original_value_misc_key} =  ${original_value.misc_key} ;;
#   }
#   join: dim_profile {
#     relationship: many_to_one
#     sql_on: ${fact_event.profile_key} = ${dim_profile.profile_key} ;;
#   }
#   join: dim_delivery_method {
#     relationship: many_to_one
#     sql_on: ${fact_event.delivery_method_key} = ${dim_delivery_method.delivery_method_key};;
#   }
#   join: dim_infusion_type {
#     relationship: many_to_one
#     sql_on: ${fact_event.infusion_type_key} = ${dim_infusion_type.infusion_type_key} ;;
#   }
#   join: dim_library {
#     relationship: many_to_one
#     sql_on: ${fact_event.library_key} = ${dim_library.library_key} ;;
#   }
#   join: dim_trigger {
#     relationship: many_to_one
#     sql_on: ${fact_event.trigger_key} = ${dim_trigger.trigger_key} ;;
#   }
#   join: dim_delivery_mode {
#     relationship: many_to_one
#     sql_on: ${fact_event.delivery_mode_key} = ${dim_delivery_mode.delivery_mode_key};;
#   }
# }

# explore: fact_infusion {
#   join: dim_drug_program {
#     relationship: many_to_one
#     sql_on: ${fact_infusion.drug_program_key} =  ${dim_drug_program.drug_program_key};;
#   }
#   join: dim_infusion_method {
#     relationship: many_to_one
#     sql_on: ${fact_infusion.infusion_method_key} = ${dim_infusion_method.infusion_method_key} ;;
#   }
# }

# ### Mapping/dim tables

# explore: dim_alarm_type {}

# explore: dim_category {}

# explore: dim_delivery_method {}

# explore: dim_delivery_mode {}

# explore: dim_drug_program {}

# explore: dim_event_message {}

# explore: dim_event_type {}

# explore: dim_infusion_method {}

# explore: dim_infusion_type {}

# explore: dim_library {}

# explore: dim_measurement_unit {}

# explore: dim_misc {}

# explore: dim_profile {}

# explore: dim_parameter {}

# explore: dim_trigger {}
