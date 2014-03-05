set :stage, :prd

# Deploy to a50, and a51
role :app, "kualiadm@uaz-kc-a50.mosaic.arizona.edu", "kualiadm@uaz-kc-a51.mosaic.arizona.edu"

#deploy the latest tag
set :branch, `git tag`.split("\n").last
