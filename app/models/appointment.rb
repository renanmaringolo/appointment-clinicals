class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
