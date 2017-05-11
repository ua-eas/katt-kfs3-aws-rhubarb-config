set :stage, :local

role :app, %w{ssh-user@localhost:22}

# Deploy from the develop branch
set :branch, 'development'
