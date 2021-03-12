project_name: "medfusion"

# The tenant name must be specified when the project is imported.
constant: medos_tenant {
  value: ""
  export: override_required
}

# The tenant medos project identify the GCP project where the actual
# data is being stored. This will be part of the fully qualified
# table name in all BQ queries.
constant: medos_tenant_project {
  value: ""
  export: override_required
}

# If the customer has installed the PharmGuardDM database with
# a different prefix, you may need to override this in the
# tenant project.
constant: medfusion_pharmguard_dm_prefix {
  value: "PharmGuardDM"
  export:  override_required
}

# The hour (in 24h format) when the PDTs associated with the datagroup
# will be rebuilt.
#
# NB: Not only must this constant be define during import, it must also
# be defined in the manifest of the child project itself so that it is
# available in the lexical scope of the child project's model.
constant: medfusion_datagroup_refresh_hour {
  value: ""
  export: override_required
}
