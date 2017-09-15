set :stage, :trn

# Set the app server host and port
role :app, %w{ssh-user@localhost:22}

# Deploy the master branch since we aren't doing tagged releases (for simplicity)
set :branch, 'master'
