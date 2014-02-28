require 'stripper/rails/version'
require 'active_support'
require 'active_model'
require 'stripper/rails'
require 'stripper/rails/orm/mongoid' if defined? ::Mongoid
require 'stripper/rails/orm/active_record' if defined? ::ActiveRecord
