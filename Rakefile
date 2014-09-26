require 'rake'
require "sinatra/activerecord/rake"
require ::File.expand_path('../config/environment', __FILE__)

Rake::Task["db:create"].clear
Rake::Task["db:drop"].clear

# NOTE: Assumes SQLite3 DB
desc "create the database"
task "db:create" do
  touch 'db/db.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/db.sqlite3'
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

desc "create clinics"
task "db:clinics" do
  clinic1 = Clinic.create(name: "Real Medical Clinic", address: "1234 Hastings Street", city: "Vancouver, BC", institution_id: "mc_123", password: "123", latitude: 49.282964, longitude: -123.106478, phone: '(555) 555-5555', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic2 = Clinic.create(name: "Healthy Shop Clinic", address: "1234 Hastings Street", city: "Vancouver, BC", institution_id: "mc_123", password: "123", latitude: 49.282635, longitude: -123.108547, phone: '(555) 555-5555', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic3 = Clinic.create(name: "Coastal Medical", address: "1234 Hastings Street", city: "Vancouver, BC", institution_id: "mc_123", password: "123", latitude: 49.282334, longitude: -123.107475, phone: '(555) 555-5555', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic4 = Clinic.create(name: "Fake Health Centre", address: "1234 Hastings Street", city: "Vancouver, BC", institution_id: "mc_123", password: "123", latitude: 49.283230, longitude: -123.108365, phone: '(555) 555-5555', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic5 = Clinic.create(name: "Ultima Walk-in Clinic", address: "1234 Hastings Street", city: "Vancouver, BC", institution_id: "mc_123", password: "123", latitude: 49.283298, longitude: -123.109065, phone: '(555) 555-5555', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic6 = Clinic.create(name: "Good Body Medical", address: "1234 Hastings Street", city: "Vancouver, BC", institution_id: "mc_123", password: "123", latitude: 49.281526, longitude: -123.108976, phone: '(555) 555-5555', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic7 = Clinic.create(name: "Say Ahh Healthcare", address: "1234 Hastings Street", city: "Vancouver, BC", institution_id: "mc_123", password: "123", latitude: 49.281779, longitude: -123.109765, phone: '(555) 555-5555', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic8 = Clinic.create(name: "Dr. Ho's Walk-in Clinic", address: "1234 Hastings Street", city: "Vancouver, BC", institution_id: "mc_123", password: "123", latitude: 49.281144, longitude: -123.106960, phone: '(555) 555-5555', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
end
