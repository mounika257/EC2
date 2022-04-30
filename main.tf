provider "aws" {
    region = "${var.aws_region}"
    secret_key = "${var.secret_key}"
    access_key = "${var.access_key}"
}


resource "aws_security_group" "ssh-allowed" {

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

}

resource "aws_instance" "example" {
    ami = "${var.ami_ec2}"
    instance_type = "${var.ec2_instance}"
    vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
    key_name = "mykey"
}
