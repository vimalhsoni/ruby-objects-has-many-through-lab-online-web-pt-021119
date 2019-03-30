
class Doctor

  @@all = []

  attr_accessor :name, :appointments
  attr_reader :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    new_appointment = Appointment.new(date, patient, self)
    @patients << new_appointment.patient
    @appointments << new_appointment
    new_appointment
  end

end
