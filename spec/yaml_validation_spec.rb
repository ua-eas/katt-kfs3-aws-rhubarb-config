# Internal: RSpec tests to verify that all YAML configuration files are
#           compatible and valid relative to Ruby's core YAML parser. Note,
#           this test recursively spiders down into the directory structure
#           contained within '$PROJECT/email' and attempts to load any files
#           that match '*.yaml'. If a configuration throws an error, this test
#           prints the offending file path and name to stdout. Additionally,
#           the stack trace Ruby produces will contain the line and column
#           number of where the parse error originates in the above mentioned
#           file.
#
require_relative './yaml_validator.rb'

describe YamlValidator do
    
    it "should load all YAML configurations without throwing any errors." do

      # Get path to email config file directory
      config_dir = File.join(File.dirname(__FILE__), '../email/')
      
      # List of filenames matching '*.yaml'
      yaml_file_list = Dir[config_dir + '**/*.yaml']
     
      # Parse each config, any thrown errors mean failure
      yaml_file_list.each do |yaml_file_path|
        begin
          # Send the path/name for validation
          YamlValidator.validate(yaml_file_path)
        rescue Exception => e
          # Report problem child file, and propegate the error
          puts "ERROR: Could not load '#{yaml_file_path}'"
          throw e
        end
      end
    end

end

