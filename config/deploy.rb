# config valid only for current version of Capistrano
lock '3.7.1'

set :application, 'Relationally'
set :repo_url, 'git@github.com:PatrickatPaperlessPCS/realtionally.git'
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
 set :deploy_to, '/home/deploy/app/relationally'

# Default value for :scm is :git
 # set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto
set :log_level, :debug
# Default value for :pty is false
# set :pty, true
# set :unicorn_pid, 'app/relationally/pids/unicorn.pid'
# Default value for :linked_files is []
append :linked_files, 'config/application.yml' #, 'config/secrets.yml'
set :normalize_asset_timestamps, %w{public/images public/javascripts public/stylesheets}

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
set :linked_dirs, fetch(:linked_dirs, []).
push(
  'log',
  'tmp/pids',
  'tmp/cache',
  'tmp/sockets',
  'vendor/bundle',
  'public/system'
)

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:reload'
  end
end

namespace :figaro do
  desc "SCP transfer figaro configuration to the shared folder"
  task :setup do
    on roles(:app) do
      upload! "config/application.yml", "#{shared_path}/config/application.yml", via: :scp
    end
  end

  desc "Symlink application.yml to the release path"
  task :symlink do
    on roles(:app) do
      execute "ln -sf #{shared_path}/config/application.yml #{current_path}/config/application.yml"
    end
  end
end
after "deploy:started", "figaro:setup"
after "deploy:symlink:release", "figaro:symlink"
