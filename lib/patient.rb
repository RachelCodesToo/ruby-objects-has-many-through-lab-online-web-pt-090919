class Patient
  
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end
  
  def appointments
    Appointment.map{|appointment| appointment.patient}
  end 
  
  
  
end 
