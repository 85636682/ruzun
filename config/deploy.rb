lock "3.7.2"

set :application, "dql_sports"
set :deploy_user, "stephen"

set :repo_url, "git@git.coding.net:dongqilai/ruzun-web.git"

set :deploy_to, "/home/#{fetch(:deploy_user)}/opt/apps/#{fetch(:application)}"

set :rbenv_type, :deploy_user
set :rbenv_ruby, '2.3.3'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

set :keep_releases, 3

append :linked_files, "config/database.yml", "config/secrets.yml"

append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

namespace :deploy do
  after :finishing, 'deploy:cleanup'
end