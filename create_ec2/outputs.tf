output "ip" {
  value = "${aws_instance.basic-instance.*.public_ip}"
}

output "public_dns" {
  value = "${aws_instance.basic-instance.*.public_dns}"
}
