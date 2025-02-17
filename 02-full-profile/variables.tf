### As with everything Terraform, any missing values or default values
### can be overwritten with a CLI environment variable of the format:
###      TF_VAR_target_organization

###  devices.tf
variable "c240_m4l_lab_device_id" {
    description = "C240-M4L-Lab Service Serial Number"
    type = string
}

###  general.tf
variable "local_ntp_servers" {
    description = "NTP Server - Terraform deployed"
    type = list
    default = [ 
        "0.us.pool.ntp.org",
        "1.us.pool.ntp.org",
        "2.us.pool.ntp.org"
    ]
}

variable "local_time_zone" {
    description = "Time Zone - Terraform deployed"
    type = string
    default = "America/New_York"
}

variable "ipv4_dns_server_1" {
    description = "IPv4 DNS Server - Terraform deployed"
    type = string
    default = "208.67.222.222"
}

variable "ipv4_dns_server_2" {
    description = "IPv4 DNS Server 2- Terraform deployed"
    type = string
    default = "208.67.220.220"
}

variable "smtp_sender_email" {
    description = "SMTP Client sender email address"
    type = string
    default = "sender@example.com"
}

variable "smtp_recipients_email" {
    description = "SMTP Client recipient email address"
    type = list
    default = [
        "recipient@example.com"
    ]
}

variable "smtp_outgoing_server" {
    description = "SMTP Client outbound email server"
    type = string
    default = "mail.example.com"
}

## Note: SNMP community and TRAP community strings are defined in credentials.tf
variable "snmp_community_access" {
    description = "SNMP setting to set v1/v2c access control"
    type = string
    default = "Full"
}

variable "snmp_sys_contact" {
    description = "SNMP sys.contact information"
    type = string
    default = "Terraform Deployed snmp.sys.contact"
}

variable "snmp_sys_location" {
    description = "SNMP sys.location information"
    type = string
    default = "Terraform Deployed snmp.sys.location"
}

variable "snmp_unique_engine_id" {
    description = "SNMP unique engine ID information"
    type = string
    default = "TF_EngID"
}

variable "snmp_trap_destination" {
    description = "SNMP Trap destination"
    type = string
    default = "traps.example.com"
}
