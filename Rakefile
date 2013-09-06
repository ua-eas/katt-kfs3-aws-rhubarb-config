require 'rspec/core/rake_task'

desc 'Default: run specs'
task :default => :test

desc 'Run specs'
RSpec::Core::RakeTask.new do |t|
  t.pattern = './spec/**/*_spec.rb' # don't need this; it's default.
  # Put spec opts in a file named .rspec in root
end

desc 'Run specs and features'
task :test => [:spec]
