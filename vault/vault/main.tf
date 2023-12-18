provider "vault"
  address ="http://127.0.0.1:8200"
  token =""
  
data "valut_generic_sercret" "phone_number" {

  path = "secret/app"
  
}

output "phone_number" {
    value = data.vault_generic_secret.phone_number
    sensitive = true
}
