require 'rspec'
require 'mongoid'
require 'active_record'
require_relative '../lib/stripper-rails'

RSpec.configure do |config|
  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  # force rspec to raise exception if used old syntax.
  config.raise_errors_for_deprecations!

  # Preparing Mysql db connection
  database_file_path = 'config/database.yml'
  database_file_path += '.example' unless File.exist?(database_file_path)

  ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

  # Preparing Mongoid connection
  mongoid_file_path = 'config/mongoid.yml'
  mongoid_file_path += '.example' unless File.exist?(mongoid_file_path)
  Mongoid.load!(mongoid_file_path, :test)

  ActiveRecord::Schema.define do
    create_table :test_active_record_strippers, force: true do |t|
      t.string :name
      t.string :email
    end
  end
end