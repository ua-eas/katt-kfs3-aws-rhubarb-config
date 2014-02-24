set :stage, :sup

# Deploy to a25 and a26
role :app, "kualiadm@uaz-kc-a25.mosaic.arizona.edu", "kualiadm@uaz-kc-a26.mosaic.arizona.edu"

#deploy the latest tag
set :branch, `git tag`.split("\n").last