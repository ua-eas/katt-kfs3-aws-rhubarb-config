# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }

namespace :deploy do

  desc 'Restart application (Does nothing for Rhubarb)'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Do Nothing
    end
  end
 end