output "cidr_block" {
  value = aws_vpc.vpc.cidr_block
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_1a_id" {
  value = aws_subnet.public.id
}

output "private_subnet_1a_id" {
  value = aws_subnet.private_1a.id
}

output "private_subnet_1c_id" {
  value = aws_subnet.private_1c.id
}
