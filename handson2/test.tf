provider "aws" {
    regioNDn ="ap-northeast-1"
    access_key="AKIAYOZVCR6PW4Q2MP6G"
    secert_key="VJIuyOTeriucRJxvsIjmc8jetg+SV1jGtVSxVMOS"
}
resource "aws_instance" "server" {
    ami="ami-0d52744d6551d851e"
    instance_type="t2.micro"
}
output "Public_ip" {
    value=aws_instance.server.Public_ip
}