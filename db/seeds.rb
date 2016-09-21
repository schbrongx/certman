# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create default certificate types
Certificatetype.create(name: 'Root CA Certificate')
Certificatetype.create(name: 'Intermediate CA Certificate')
Certificatetype.create(name: 'SSL Certificate')
Certificatetype.create(name: 'SSL Wildcard Certificate')

# Keypairs
Keypair.create(name: '-none-', publickey:'-NONE-', privatekey:'NONE')
Keypair.create(name: 'example.com key', publickey:'-----BEGIN PUBLIC KEY-----
MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAsW0RW/Y/C1NugD8e9K4E
qwPnF3P3mb9zMrOF2U7SOdzFma5Zcg8fTx2j5nh3TFphY5/cj4vYWndd2FTBP1Sh
StGFyOJNFaJ4OfXNrzmW4HPJXzpxOwk8dNLuOQ2GWrqb4bcHT8dN+/vfO/2GK/DJ
yrCve0ZCVEZwSUBmnnSOUb5aqb3Tlu3kdn2yDQbN4d5UkfsKC4DVzQD7N6rXpLZl
Q9z/Z33voI5fP+yqXixmhfh7W1r4QDlp5iATuBEwYnjaPpnrMMs/O/UTbkzJh9qr
yE6wqn0/iJm+YOJQ8mYGQi/YQzcPrgVseLUivqWKOLZB6ogOWIlY81/Y+N/dF7pK
1kcSdMxdD4r6j5iaVHwnTces0xBb0h9OvlNuAT5v0EAqI4dUebB3iU4UqKqJxbHI
W72r7yKjDZqO56DE654p8Ca2QZeWVI+X/gvYrIpIQzxkQErb8qiNJJfGat9Ckc3C
NKQhGOrFjxXwSkjBAb6Ns7dCLXQdZvY0Bz1StAQUURHI2M2BpXBt78JmAvxVWuJa
m6UkaPyQuaR3LBdAcr+LltgOVhsVl0G8VpFSOS8dfojGpLMwgMJqnfo8S9sQE3JD
/d0b5PlMmmJx1X94Fw1/gczGZAMGAwD8LrNjc8ihNn/jd2cDFJJMUVJAnUiuixQb
MRMq+02cQHBgZMtfOzjpUN8CAwEAAQ==
-----END PUBLIC KEY-----', privatekey:'-----BEGIN PRIVATE KEY-----
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
4kzVRo6OoTu7hBO7XNf//hZXyBTv
-----END PRIVATE KEY-----')

# Create (empty) CSR template and an example CSR template
Csrtemplate.create(name:"-none-",description:"-empty template-",cn:"",ou:"",o:"",l:"",s:"",c:"",email:"")
Csrtemplate.create(name:"Example CSR Template",description:"A dummy template",cn:"www.example.com",ou:"IT",o:"Example Corporation",l:"St. Gallen",s:"SG",c:"CH",email:"admin@example.com")

# CSRs
Csr.create(name: '-none-', keypair_id: 1, csrtemplate_id: 1, content: '-none-',cn:'-none-',ou:"",o:"",l:"",s:"",c:"",email:"")
Csr.create(name: 'Example.com CSR', keypair_id: 2, csrtemplate_id: 2, content: '-----BEGIN CERTIFICATE REQUEST-----
MIIEuDCCAqACADB0MQswCQYDVQQGEwJDSDEYMBYGA1UEAxMPd3d3LmV4YW1wbGUu
Y29tMRMwEQYDVQQHEwpTdC4gR2FsbGVuMRwwGgYDVQQKExNFeGFtcGxlIENvcnBv
cmF0aW9uMQswCQYDVQQIEwJTRzELMAkGA1UECxMCSVQwggIiMA0GCSqGSIb3DQEB
AQUAA4ICDwAwggIKAoICAQCxbRFb9j8LU26APx70rgSrA+cXc/eZv3Mys4XZTtI5
3MWZrllyDx9PHaPmeHdMWmFjn9yPi9had13YVME/VKFK0YXI4k0Vong59c2vOZbg
c8lfOnE7CTx00u45DYZaupvhtwdPx037+987/YYr8MnKsK97RkJURnBJQGaedI5R
vlqpvdOW7eR2fbINBs3h3lSR+woLgNXNAPs3qtektmVD3P9nfe+gjl8/7KpeLGaF
+HtbWvhAOWnmIBO4ETBieNo+meswyz879RNuTMmH2qvITrCqfT+Imb5g4lDyZgZC
L9hDNw+uBWx4tSK+pYo4tkHqiA5YiVjzX9j4390XukrWRxJ0zF0PivqPmJpUfCdN
x6zTEFvSH06+U24BPm/QQCojh1R5sHeJThSoqonFschbvavvIqMNmo7noMTrninw
JrZBl5ZUj5f+C9isikhDPGRAStvyqI0kl8Zq30KRzcI0pCEY6sWPFfBKSMEBvo2z
t0ItdB1m9jQHPVK0BBRREcjYzYGlcG3vwmYC/FVa4lqbpSRo/JC5pHcsF0Byv4uW
2A5WGxWXQbxWkVI5Lx1+iMakszCAwmqd+jxL2xATckP93Rvk+UyaYnHVf3gXDX+B
zMZkAwYDAPwus2NzyKE2f+N3ZwMUkkxRUkCdSK6LFBsxEyr7TZxAcGBky187OOlQ
3wIDAQABoAAwDQYJKoZIhvcNAQELBQADggIBAHgJC9uV1TFV6x3JDqUiz5Utw7Mg
FkQaDPAXFlLoKd7qoJtToq9PZ/bhmKZ8DXj5FHED3napI5W/kOvrpOU/LLrCPIr5
fx7C9S2Wj/uASwVGggLF8oWyzsohxVg7Ercg8yKOk07hRoj0dHRpeePS7M86psSz
bbMD/H/gL/UiaEirI6y+waNKelR4XLFacY4KXYHcNrBvbKvhP9mbjy7IQdzb5/pI
EiTobXMAjtOqacMrMEVChtgsyb57Uaueypv+lZJNziTiNl5ly6uMc+n5wU4pE7pv
82aNtfFnNaK/OXQ+YR5an48Ow/sfBIgV9fyaPKe4TKs3BCUh3YJkAoGxArRpF6lY
rRKJW5q4VcUPYGVl/7ztj4z/GNj74Kj6XcxQKPBhbTZIupWgFmEoCnOVxsVCU3eD
gLiA+ARH5kjVOdHLWWAH4IWf6bTBhwyGqdeYIafjPoNlltx//+MbKKoG0qF2yWOB
AJffZZ6P+Jp/ljiHzjIEYEsnWuynOZvdistX7TekWAZRJM8qMWYeptavwyY22MVq
7IJwJpf0YndOZBnyyKaTDhwvkmU7Tp5PdklG7wI2cb3wXaNn85UpKl7G/Ey1Ra/K
X1gp9qEDb9MwO8VLQngYTkCAhmnsBZKGahQVYZWGkrVY0cs7MbkiU8U7odXMnTu8
eWxBXNv3Szc5xGhy
-----END CERTIFICATE REQUEST-----',cn:"www.example.com",ou:"IT",o:"Example Corporation",l:"St. Gallen",s:"SG",c:"CH",email:"admin@example.com")

# Certificates
Certificate.create(name: '-none-', certificatetype_id: 3, content: '-none-')
Certificate.create(name: 'Example.com SSL Certificate', certificatetype_id: 3, content: '-----BEGIN CERTIFICATE-----
MIIFZDCCA0wCCQDe9n4+A+Sb2jANBgkqhkiG9w0BAQsFADB0MQswCQYDVQQGEwJD
SDEYMBYGA1UEAxMPd3d3LmV4YW1wbGUuY29tMRMwEQYDVQQHEwpTdC4gR2FsbGVu
MRwwGgYDVQQKExNFeGFtcGxlIENvcnBvcmF0aW9uMQswCQYDVQQIEwJTRzELMAkG
A1UECxMCSVQwHhcNMTYwOTAxMDgwMzM5WhcNMTkwOTAxMDgwMzM5WjB0MQswCQYD
VQQGEwJDSDEYMBYGA1UEAxMPd3d3LmV4YW1wbGUuY29tMRMwEQYDVQQHEwpTdC4g
R2FsbGVuMRwwGgYDVQQKExNFeGFtcGxlIENvcnBvcmF0aW9uMQswCQYDVQQIEwJT
RzELMAkGA1UECxMCSVQwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCx
bRFb9j8LU26APx70rgSrA+cXc/eZv3Mys4XZTtI53MWZrllyDx9PHaPmeHdMWmFj
n9yPi9had13YVME/VKFK0YXI4k0Vong59c2vOZbgc8lfOnE7CTx00u45DYZaupvh
twdPx037+987/YYr8MnKsK97RkJURnBJQGaedI5RvlqpvdOW7eR2fbINBs3h3lSR
+woLgNXNAPs3qtektmVD3P9nfe+gjl8/7KpeLGaF+HtbWvhAOWnmIBO4ETBieNo+
meswyz879RNuTMmH2qvITrCqfT+Imb5g4lDyZgZCL9hDNw+uBWx4tSK+pYo4tkHq
iA5YiVjzX9j4390XukrWRxJ0zF0PivqPmJpUfCdNx6zTEFvSH06+U24BPm/QQCoj
h1R5sHeJThSoqonFschbvavvIqMNmo7noMTrninwJrZBl5ZUj5f+C9isikhDPGRA
StvyqI0kl8Zq30KRzcI0pCEY6sWPFfBKSMEBvo2zt0ItdB1m9jQHPVK0BBRREcjY
zYGlcG3vwmYC/FVa4lqbpSRo/JC5pHcsF0Byv4uW2A5WGxWXQbxWkVI5Lx1+iMak
szCAwmqd+jxL2xATckP93Rvk+UyaYnHVf3gXDX+BzMZkAwYDAPwus2NzyKE2f+N3
ZwMUkkxRUkCdSK6LFBsxEyr7TZxAcGBky187OOlQ3wIDAQABMA0GCSqGSIb3DQEB
CwUAA4ICAQBrIW89pEpqpVkPZ2UbhXBjzNsoEdbFLWBXQTwNoWIjgEskCV/m4Qyq
AtMgPVLK1S4lClHU/90iq3GAKVmuNHyR+00T64SkPEkRhNv2PSqgyTejVmOoBWs9
qNc4ctwSCRJ6tIwRntkpowrPvPrEp/adtEIrWSlMgQcfzSZQJvRrBiuzLIIwLaDB
JiXnDR6rqyaEME4hFBDqhH1ZP5g3kC8lI2V6UgmdmNSARo5mMWq7oVE4b61w9tHe
9BfDzsJURmWmqq9leJhT4MJiSHgcFmWd11kLwW+ATkymUwPoKB2S1RdDXwicDen7
wgZcXdaIf5uhn+ICBgQO4Ghr60hTUUnRzTAt0jaTJx9uT2A9P/+mfOaZ3L8e0jI2
o9xuCH8lIOWxIXNlOZFrr4dx0rUu1cPKU6GG47/j2kgQkUCBl5jmGwurkVtoBVMm
gai3oCP/PUYohNgc+yNHBq552BbsIxTclsPiGuUwV2JbEBK0uvCU9mQYkVrcRXpw
DvvXLclePbXOU3qsDSK11H3Tm6iAE0ljpoaPqFTVX+W6ZcsVNsy5nbQLkcFMgglb
eT9u/Douk42Nm9EqH0OsndfQ3s7JV22CI3JhcPDDuF4XiN5OwXL+MJn3jgFkVfp6
23OXrzveligdhDKy2ETWmYGXZU1UsZX5Uu/ucD/CC3uEOfxKtytvpg==
-----END CERTIFICATE-----')

Keystore.create(name: "example.com ssl key", description: "none", keypair_id: 2, csr_id: 2, certificate_id: 2)

Setting.create(name: "autogenerated_keysize", description: "Size of autogenerated openssl keys. Use 1024, 2048 or 4096", value: "4096")