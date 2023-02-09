class Patient < ApplicationRecord
    belongs_to :city, dependent: :destroy
    has_many :appointments
    has_many :doctors, through: :appointments
end