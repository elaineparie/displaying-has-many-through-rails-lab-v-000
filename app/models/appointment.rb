class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def formatted_date
    date = DateTime.new(self.appointment_datetime)
    date.strftime(%B)
  end
end
