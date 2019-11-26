# frozen_string_literal: true

require "active_record"
require "active_record/connection_adapters/postgresql_adapter"

module AR
  module Timestamptz
    def column(name, type, **options)
      type = :timestamptz if type == :datetime
      super(name, type, **options)
    end
  end
end

ActiveRecord::ConnectionAdapters::TableDefinition.prepend(AR::Timestamptz)
