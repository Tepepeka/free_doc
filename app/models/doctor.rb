class Doctor < ApplicationRecord
    belongs_to :city, dependent: :destroy
    has_many :appointments
    has_many :patients, through: :appointments
    has_many :join_table_specialty_doctors
    has_many :specialties, through: :join_table_specialty_doctors
end