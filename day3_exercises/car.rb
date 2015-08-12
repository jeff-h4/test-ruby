class Car
  def initialize(model,type,capacity)
    @model = model
    @type = type
    @capacity = capacity
  end
  def drive
    ignite_engine
    puts "Driving"
  end
  def stop 
    puts pump_gas
    puts "Stopping"
  end
  def park 
    puts "Parking"
  end
  private
  def ignite_engine
    puts "Private: Ignite the engine!"
  end
  def pump_gas
    puts "Private: Pumping gas..."
  end
  def self.max_speed
    return 200
  end
end
