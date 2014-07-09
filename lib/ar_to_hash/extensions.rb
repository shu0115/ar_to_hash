module ActiveRecord
  class Base
    def to_hash
      ActiveSupport::JSON.decode(self.to_json)
    end
  end
end
