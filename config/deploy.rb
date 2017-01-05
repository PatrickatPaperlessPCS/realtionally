# config valid only for current version of Capistrano
lock '3.7.1'

set :application, 'Relationally'
set :repo_url, 'git@github.com:PatrickatPaperlessPCS/realtionally.git'
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
 set :deploy_to, 'app/relationally'

# Default value for :scm is :git
 set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto
set :log_level, :debug
# Default value for :pty is false
# set :pty, true
set :unicorn_pid, 'app/relationally/pids/unicorn.pid'
# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml'
set :normalize_asset_timestamps, %w{public/images public/javascripts public/stylesheets}

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
