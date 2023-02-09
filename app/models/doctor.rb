class Doctor < ApplicationRecord
    belongs_to :city, dependent: :destroy
    has_many :appointments
    has_many :patients, through: :appointments
end