resource "aws_eip" "eip" {
  vpc      = true
  instance = aws_instance.server.id

  tags = {
    Name = "info-app-eip"
  }
}
