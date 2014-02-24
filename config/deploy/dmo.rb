set :stage, :dmo

# Set the app server host and port
role :app, %w{kualiadm@uaz-kf-a01.mosaic.arizona.edu}

# Deploy from the staging branch
set :branch, 'staging'