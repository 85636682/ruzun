# config valid only for Capistrano 3.1
lock '3.6.0'

#set :application, 'dingist'
set :application, 'ruzun'
#set :repo_url, 'git@github.com:85636682/dongqilai.git'
set :repo_url, 'git@git.coding.net:dongqilai/ruzun-web.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app
#set :deploy_to, "/home/ubuntu/www/dingist"
set :deploy_to, "/home/ubuntu/www/ruzun"


set :keep_releases, 3

set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby_version, '2.2.3'
set :rbenv_ruby, '2.2.3'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

# set :linked_files, %w{config/wechat.yml}
set :linked_dirs, %w{tmp/pids tmp/sockets log}

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
