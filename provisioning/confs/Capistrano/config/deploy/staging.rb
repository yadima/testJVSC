#######################
# Setup Server
########################
server "localhost", user: "vagrant", roles: %w{web}
set :deploy_to, "/home/vagrant/tst-symf-demo"
#########################
# Capistrano Symfony
#########################
set :file_permissions_users, ['www-data']
set :webserver_user, "www-data"
#########################
# Setup Git
#########################
set :branch, "master"
