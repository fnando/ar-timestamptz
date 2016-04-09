require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require "bundler/setup"
require "ar/timestamptz"
require "minitest/utils"
require "minitest/autorun"

ActiveRecord::Base.establish_connection "postgres:///test"
ActiveRecord::Migration.verbose = false

def with_migration(&block)
  Class.new(ActiveRecord::Migration, &block).new
end
