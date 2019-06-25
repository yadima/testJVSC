# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "test_symfony_demo"
set :repo_url, "https://github.com/symfony/demo.git"
#########################
# Setup Capistrano
#########################
set :log_level, :info
set :use_sudo, false
set :ssh_options, {
  forward_agent: true
}
set :keep_releases, 3
#######################################
# Linked files and directories (symlinks)
#######################################
set :file_permissions_paths, [fetch(:log_path), fetch(:cache_path)]
set :composer_install_flags, '--no-interaction --optimize-autoloader'
namespace :deploy do
  after :updated, 'composer:install_executable'
end
