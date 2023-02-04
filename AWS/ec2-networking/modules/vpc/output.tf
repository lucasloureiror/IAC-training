output "vpc_id" {
    value = aws_vpc.main-vpc.id
    description = "ID for main VPC"
}