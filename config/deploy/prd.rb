set :stage, :prd

# Deploy to a50, and a51
role :app, %w{kualiadm@uaz-kc-a50.mosaic.arizona.edu kualiadm@uaz-kc-a51.mosaic.arizona.edu} 

# deploy the latest tag using natural sorting because we are not using Git 2.x
set :branch, `git tag | sort -V`.split("\n").last
