set :stage, :dmo

# Set the app server host and port
role :app, %w{ssh-user@localhost:22}

# Deploy from the staging branch
set :branch, 'staging'
