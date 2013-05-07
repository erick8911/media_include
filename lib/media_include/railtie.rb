module MediaInclude
  ##Extends de module after active record loads
  class Railtie < Rails::Railtie
    ActiveSupport.on_load(:active_record) do
      ActiveRecord::Base.send :extend, MediaInclude
    end
  end
end  