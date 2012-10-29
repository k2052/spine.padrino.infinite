require 'ffaker' 
require 'factory_girl'

FactoryGirl.definition_file_paths = [
  File.join(Padrino.root, 'test', 'factories')
]
FactoryGirl.find_definitions

# Add some test pages
unless Padrino.env == :production
  FactoryGirl.create_list(:page, 200)
end