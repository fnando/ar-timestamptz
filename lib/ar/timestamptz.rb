# frozen_string_literal: true

require "active_record"
require "active_record/connection_adapters/postgresql_adapter"

ActiveRecord::Type.class_eval do
  extension = Module.new do
    def column(name, type, **options)
      type = :timestamptz if type == :datetime
      super(name, type, **options)
    end
  end

  ActiveRecord::ConnectionAdapters::TableDefinition.prepend(extension)
end
