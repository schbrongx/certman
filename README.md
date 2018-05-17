# README.md for certman

Certman is an SSL-keystore management software. You can manage and generate: keypairs, CSRs and certificates and bundle them together in a keystore.

## Built with
* ruby 2.3.1p112 (2016-04-26) [x86_64-linux-gnu]
* Rails 4.2.7.1
* Making heavy use of [bootstrap](http://www.getbootstrap.com "Link to http://getbootstrap.com") and [glyphicon halflings](http://glyphicons.com "Link to http://glyphicons.com")

## Prerequesites:
* Needs curl, libcurl3, libcurl3-gnutls and libcurl4-openssl-dev installed on the server

## Installation
* Clone certman: `git clone https://github.com/schbrongx/certman.git`
* Change into the new directory: `cd certman`
* _OPTIONAL: Remove all traces from git: `rm -rf .git && rm .gitignore`_
* Create **config/application.yml**, look below for details
* Alter **config/boot.rb**, look below for details
* Run `bundle install`
* Run `RAILS_ENV=production rake db:migrate db:seed --trace` (seeding is mandatory, the application's default settings are stored in the DB)
* Run `RAILS_ENV=production rake assets:precompile` to create the "public"-directory
* Run the server with `rails s` or your preferred webserver (remember, host and port are already set in boot.rb)

## Files
**config/application.yml**
```yaml
# username and password for gem 'gmail'
GMAIL_USERNAME: "USERNAME@gmail.com"
GMAIL_PASSWORD: "PASSWORD"

# send mails with gmail?
SEND_WITH_GMAIL: "false"
development:
  SEND_WITH_GMAIL: "false"
test:
  SEND_WITH_GMAIL: "false"
production: 
  SEND_WITH_GMAIL: "true"

# mailer default URL
ACTION_MAILER_DEFAULT_URL_OPTION_HOST: "yourhostname.example.com"
ACTION_MAILER_DEFAULT_URL_OPTION_PORT: 80  # or 443 or 3000 or whatever you run on

# IPs which may get a console when an exception occurs
# WHITELISTED_IPS: ~    # this empties the variable for all environments
WHITELISTED_IPS: "192.168.1.100"   # better use one of YOUR ips here

# application default user with id=1
ADMIN_USERNAME: "Admin"
ADMIN_EMAIL:    "USERNAME@gmail.com"
ADMIN_PASSWORD: "PASSWORD"

# used for cookie encryption and identification
# may be set in your server's webserver config
# for apache2 this is: /etc/apache2/envvars
# this should be a random alphanum string with 
# at least 30 characters (i am using 128 chars)
SECRET_KEY_BASE: "01234567890abcdefghijklmnopqrstuvwxyz01234567890abcdefghijklmnopqrstuvwxyz01234567890abcdefghijklmnopqrstuvwxyz01234567890abcdef"
```

**config/boot.rb**
change `default_options_bk`  to:
```
default_options_bk.merge!(Host: '0.0.0.0', Port: 9000)
```

