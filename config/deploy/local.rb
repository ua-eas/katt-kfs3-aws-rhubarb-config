set :stage, :local

role :app, %w{kualiadm@localhost:2222}

# Deploy from the develop branch
set :branch, 'development'