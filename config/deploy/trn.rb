set :stage, :trn

# Set the app server host and port
role :app, %w{kualiadm@uaz-kf-a06.mosaic.arizona.edu}

# Deploy from the latest tag using natural sorting because we are not using Git 2.x
set :branch, `git tag | sort -V`.split("\n").last