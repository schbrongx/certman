cd rails/certman && git pull origin master && kill -HUP $(cat tmp/pids/server.pid)
rails s -d
