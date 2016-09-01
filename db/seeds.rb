# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Keytype.create(name: 'Public Key')
Keytype.create(name: 'Private Key')

Certificatetype.create(name: 'Root CA Certificate')
Certificatetype.create(name: 'Intermediate CA Certificate')
Certificatetype.create(name: 'SSL Certificate')
Certificatetype.create(name: 'SSL Wildcard Certificate')

Key.create(keytype_id: 1, keypartner_id: 2, content:'-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCI1pk9jN4xLbaWYFGVKbnwIAFT
J2IfTg+DNR7Zy5dFzLdz7RqDXH6i/NdXvEoWM5brlTlVf4SapnbpxOlUWCeRnsXX
hLBuEUsOyLy70nsA/bQLxf0PumnpsML+/5Of+YFfJjvx6WdmCQxICCtf1pPikjgw
i8AP/4xlENQrTvPQ0wIDAQAB
-----END PUBLIC KEY-----')
Key.create(keytype_id: 2, keypartner_id: 1,content:'-----BEGIN RSA PRIVATE KEY-----
MIICXAIBAAKBgQCI1pk9jN4xLbaWYFGVKbnwIAFTJ2IfTg+DNR7Zy5dFzLdz7RqD
XH6i/NdXvEoWM5brlTlVf4SapnbpxOlUWCeRnsXXhLBuEUsOyLy70nsA/bQLxf0P
umnpsML+/5Of+YFfJjvx6WdmCQxICCtf1pPikjgwi8AP/4xlENQrTvPQ0wIDAQAB
AoGAEwaDV+N2ITBR6qaJsUuT5qcMiBs5sVCRJ5UDLRT5e2LzPtMAlLMPiGnPJwuu
4Vda7HZa+mA4d6gdcHNIXcnD9m4fx2hKfyxBftROhK0Eoq7zN045fp4ETtW3OPkd
eXZNWQ/hOz52IKHUoXOhqJOaqWl/GDN0+OE5H11n3AOnw4ECQQDkbfqC6DGy6jSP
WMZGqcIsinL23p8GBYgEurZ8DhoOvgeUA/KfWTn4GsVbgS2OvnB8URcC0jbHeB0u
duSdGlkJAkEAmVqhOB7IbaSkkZIBzvu7rpvSwZxkzmHF24LQQikTLx+CzX2VqVCA
WhEb89NvCtVOAeKOj/ndFzVNxPFaJmSd+wJBAIrvjX/TpG7S3pcVgrt2AyE+MECR
FR3/fUSLH/UCSr0OveM8J3TeO1D5T3Khdkks8ZPbamiP3TujhfQ94jzfyqkCQGb+
Tk6xpey1ae12gQ5xVPCFKLvtfGp7kfXGWnZEveSlJiU6lfw726gh24MbWnWNIrHz
ZcnehxViMFP3wJMOemcCQFv6B9x7YoB1aMsJuK3bQ/Eseb5p6NEztk3LYj0trtXx
fKuUwRRMrQTHzot8I7slYp3ooq26WXd88W28i3K3qzU=
-----END RSA PRIVATE KEY-----')

Csrtemplate.create(name:"-empty template-",description:"-empty template-",cn:"",ou:"",o:"",l:"",s:"",c:"",email:"")
Csrtemplate.create(name:"Example CSR Template",description:"A dummy template",cn:"www.example.com",ou:"IT",o:"Example Corporation",l:"St. Gallen",s:"SG",c:"CH",email:"admin@example.com")
