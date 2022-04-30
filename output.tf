#output "name" {
 #   value = aws_instance.myinstance.private_ip
#}

output "my-public-ip"{
       value= aws_instance.example.public_ip
}