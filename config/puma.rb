app_root = '/home/deployer/logistics'
pidfile "#{app_root}/shared/tmp/pids/puma.pid"
state_path "#{app_root}/shared/tmp/pids/puma.state"
stdout_redirect "#{app_root}/shared/log/puma.stdout.log", "#{app_root}/shared/log/puma.stderr.log", true
bind "unix:///#{app_root}/shared/tmp/sockets/puma.sock"
activate_control_app "unix://#{app_root}/shared/tmp/sockets/pumactl.sock"

rails_env = ENV['RAILS_ENV'] || "production"
environment rails_env
port        ENV.fetch("PORT") { 3000 }

daemonize true
workers 2

threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count

preload_app!

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end

before_fork do
  ActiveRecord::Base.connection_pool.disconnect!
end

plugin :tmp_restart
