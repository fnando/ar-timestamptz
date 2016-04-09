require "test_helper"

class TimestamptzTest < Minitest::Test
  let(:model) { Class.new(ActiveRecord::Base) { self.table_name = "users" } }

  test "create datetime columns as timestamptz" do
    with_migration do
      drop_table(:users) if table_exists?(:users)
      create_table(:users) do |t|
        t.datetime :deleted_at, null: true
        t.timestamps null: false
      end
    end

    columns = model.columns.select {|col| col.name != "id" }

    assert columns.all? {|col| col.sql_type == "timestamp with time zone" }
  end
end
