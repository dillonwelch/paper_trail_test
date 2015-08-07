require 'bundler/gem_tasks'
require 'yaml'
require 'logger'
require 'active_record'

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task default: :spec
rescue LoadError
  # no can has RSpec
  puts 'Please install RSpec.'
end

include ActiveRecord::Tasks

DatabaseTasks.env = ENV['DB_ENV'] || 'test'
DatabaseTasks.db_dir = 'db'
DatabaseTasks.database_configuration = YAML.load_file('config/database.yml')
DatabaseTasks.migrations_paths = "#{DatabaseTasks.db_dir}/migrate"

task :environment do
  ActiveRecord::Base.configurations = DatabaseTasks.database_configuration
  ActiveRecord::Base.establish_connection DatabaseTasks.env.to_sym
  require 'main'
end

load 'active_record/railties/databases.rake'
