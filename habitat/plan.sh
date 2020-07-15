pkg_name=effortless_sample
pkg_origin=devopsdina
pkg_description="effortless sample to update client.rb with custom rubygems url"
pkg_version="0.1.0"
pkg_maintainer="devopsdina"
pkg_license=("Apache-2.0")
pkg_scaffolding="chef/scaffolding-chef-infra"
scaffold_policy_name="Policyfile"
scaffold_policyfile_path="$PLAN_CONTEXT/../" # habitat/../Policyfile.rb

do_install() {
  do_default_install
  cat "$PLAN_CONTEXT/dm_client.rb" >> "${pkg_prefix}/config/client-config.rb"
}