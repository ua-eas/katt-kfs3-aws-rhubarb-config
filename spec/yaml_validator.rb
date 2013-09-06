# Internal: A simple class used to load YAML files with the intention of being
#           used in RSpec tests -- if no errors are thrown when loading the
#           file, then the YAML is considered to be valid.
#
# Instance Variables:
# @yaml_file - A string that is an absolute file path of a solitary YAML config
#              file.
module YamlValidator
  
  require 'yaml'


  def self.validate(yaml_file_path)
    YAML.load(File.read yaml_file_path)
  end


end
