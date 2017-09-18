set :stage, :prd

# Deploy to localhost since we are using Docker
role :app, %w{ssh-user@localhost:22}

# Deploy the master branch since we aren't doing tagged releases (for simplicity)
set :branch, 'master'
