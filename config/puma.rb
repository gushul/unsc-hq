# Change to match your CPU core count
workers ENV.fetch('WEB_CONCURRENCY') { 1 }

# Min and Max threads per worker
threads_count = ENV.fetch('RAILS_MAX_THREADS') { 5 }

threads 1, threads_count

app_dir = File.expand_path('../..', __FILE__)
shared_dir = "#{app_dir}/shared"

# Default to production
rails_env = ENV['RAILS_ENV'] || 'production'
environment rails_env

# Set up socket location
bind "unix://#{shared_dir}/sockets/puma.sock"

# Logging
stdout_redirect "#{shared_dir}/log/puma.stdout.log", "#{shared_dir}/log/puma.stderr.log", true

# Set master PID and state locations
pidfile "#{shared_dir}/pids/puma.pid"
state_path "#{shared_dir}/pids/puma.state"
activate_control_app

# Use the `preload_app!` method when specifying a `workers` number.
preload_app!

# Close any connections to the database before workers are forked to prevent connection leakage.
before_fork do
  ActiveRecord::Base.connection_pool.disconnect! if defined?(ActiveRecord)
end

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end