set :stage, :cdf

# Set the app server host and port
role :app, %w{kualiadm@uaz-ka-a10.mosaic.arizona.edu}

# Deploy from the develop branch
set :branch, 'development'