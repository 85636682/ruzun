
lock "3.7.2"

set :application, "ruzun"
set :repo_url, "git@git.coding.net:dongqilai/ruzun-web.git"

set :deploy_to, "/opt/app/ruzun"

set :user, 'root'
set :rbenv_type, :user

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

set :keep_releases, 3

set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{tmp/pids tmp/sockets log}