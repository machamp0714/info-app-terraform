resource "aws_db_subnet_group" "private_subnet_group" {
  name = "info_app_db_subent"
  subnet_ids = [
    data.terraform_remote_state.vpc.outputs.private_subnet_1a_id,
    data.terraform_remote_state.vpc.outputs.private_subnet_1c_id
  ]
}
