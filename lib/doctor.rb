class Doctor 
  
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all.push(self)
  end
  
  def appointments
    return Appointment.all.select{|x| x.doctor == self}
  end 
  
  def self.all 
    return @@all 
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end 
  
  def patients
    return appointments.map{|appointment| appointment.patient}
  end
  
end