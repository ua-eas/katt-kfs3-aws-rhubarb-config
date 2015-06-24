set :stage, :sup

# Deploy to a25 and a26
role :app, %w{kualiadm@uaz-kc-a25.mosaic.arizona.edu kualiadm@uaz-kc-a26.mosaic.arizona.edu} 

# deploy the latest tag using natural sorting because we are not using Git 2.x
set :branch, `git tag | sort -V`.split("\n").last