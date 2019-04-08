class Doctor
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(patient, date)
    app = Appointment.new(patient, date)
    app.doctor = self
    app
  end
  
  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.collect{|appointment| appointment.patient}
  end
end