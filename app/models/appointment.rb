class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def formatted_date
    self.appointment_datetime.strftime(%b)
  end
end
