# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/deploy/app/relationally/current"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/deploy/app/relationally/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/home/deploy/app/relationally/current/log/unicorn.log"
stdout_path "/home/deploy/app/relationally/current/log/unicorn.log"

# Unicorn socket
# listen "/tmp/unicorn.[app name].sock"
listen "/tmp/unicorn.relationally.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30