# frozen_string_literal: true

require "test_helper"

class TimestamptzTest < Minitest::Test
  let(:model) { Class.new(ActiveRecord::Base) { self.table_name = "users" } }

  test "create datetime columns as timestamptz" do
    with_migration do
      drop_table(:users) if data_source_exists?(:users)
      create_table(:users) do |t|
        t.datetime :deleted_at, null: true
        t.timestamps null: false
      end
    end

    columns = model.columns.reject {|col| col.name == "id" }
    columns.each do |col|
      assert_match %r{timestamp(:?\(\d\))? with time zone}, col.sql_type, col.name
    end
  end
end
