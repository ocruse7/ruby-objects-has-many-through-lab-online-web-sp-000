class Appointment 
  attr_accessor :date, :doctor, :patient
  @@all = [] 
  
  def initialize(date, patient, doctor)
    @date = date 
    @doctor = doctor
    @patient = patient
    @@all.push(self)
  end
  
  def self.all
    return @@all 
  end 
  
end