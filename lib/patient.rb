class Patient
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
  end
  
  def new_appointment(doctor, date)
    Appointment.new()
  end
end