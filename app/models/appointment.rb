class Appointment < ApplicationRecord
    belongs_to :city, dependent: :destroy
    belongs_to :doctor
    belongs_to :patient
end