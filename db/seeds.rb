# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

# destroy_all
City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
JoinTableSpecialtyDoctor.destroy_all


# City create
3.times do |i|
    City.create(
        name:Faker::Address.city,
        zip_code:Faker::Address.zip_code
    )
    puts "*"*(i+1)
    puts "#{i+1} city(ies) created"
end


# Doctor create
6.times do |i|
    Doctor.create(
        name:Faker::Name.name,
        city_id:City.all.sample.id
    )
    puts "*"*(i+1)
    puts "#{i+1} doctor(s) created"
end


# Patient create
12.times do |i|
    Patient.create(
        name:Faker::Name.name,
        city_id:City.all.sample.id
    )
    puts "*"*(i+1)
    puts "#{i+1} patient(s) created"
end


# Appointment create
24.times do |i|
    Appointment.create(
        date:Faker::Date.in_date_period,
        doctor_id:Doctor.all.sample.id,
        patient_id:Patient.all.sample.id,
        city_id:City.all.sample.id
    )
    puts "*"*(i+1)
    puts "#{i+1} appointment(s) created"
end


# Specialty create
specialties = ["kine","dentiste","ostheo","pediatre","podologue"]
specialties.each_with_index do |specialty,i|
    Specialty.create(
        name:specialty
    )
    puts "*"*(i+1)
    puts "#{i+1} specilaty(ies) created"
end


# JoinTableSpecialtyDoctor create
10.times do |i|
    JoinTableSpecialtyDoctor.create(
        doctor_id:Doctor.all.sample.id,
        specialty_id:Specialty.all.sample.id
    )
    puts "*"*(i+1)
    puts "#{i+1} jointable(s) created"
end