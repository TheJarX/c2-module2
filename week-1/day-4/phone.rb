class Phone
  def initialize(brand, color, storage, ram, procesor, operating_system)
     @brand      = brand
     @color      = color
     @storage    = storage
     @ram        = ram
     @processor  = processor
     @os         = operating_system
  end

  def on()
    puts "Starting..."
  end

  def off()
    puts "Shutting down..."
  end
end
