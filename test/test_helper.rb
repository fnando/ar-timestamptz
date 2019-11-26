# frozen_string_literal: true

require "simplecov"
SimpleCov.start

require "bundler/setup"
require "ar/timestamptz"
require "minitest/utils"
require "minitest/autorun"

ActiveRecord::Base.establish_connection "postgres:///test"
ActiveRecord::Migration.verbose = false

def with_migration(&block)
  ar_version = Float("#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}")
  Class.new(ActiveRecord::Migration[ar_version], &block).new
end
