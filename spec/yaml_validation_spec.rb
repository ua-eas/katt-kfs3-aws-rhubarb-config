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
          YamlValidator.validate(yaml_file_path)
        rescue Exception => e
          puts "ERROR: Could not load '#{yaml_file_path}'"
          puts e.message  
          return 1
        end
      end

    end

end

