require 'active_record'
# Connect to the test database (assumes migrated).
ActiveRecord::Base.establish_connection(
  YAML.load_file('config/database.yml')['test']
)

require_relative '../lib/main'
