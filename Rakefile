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
  clinic1 = Clinic.create(name: "Abbotsford Health Unit", address: "#104 - 34194 Marshall Road", city: "Abbotsford, BC", institution_id: "mc_116", password: "123", latitude: 49.037958, longitude: -122.276861, phone: '604-864-3400', email: 'abbotsfordhealthunit@gmail.com', website: 'abbotsfordhealthunit.com')
  clinic2 = Clinic.create(name: "John Braithwaite Youth Health Clinic", address: "145 West 1st Street, 2nd Floor", city: "North Vancouver, BC", institution_id: "mc_187", password: "123", latitude: 49.312492, longitude: -123.080612, phone: '604-983-6700', email: 'youthhealthcentre@example.com', website: 'youthhealthcentre.com')
  clinic3 = Clinic.create(name: "Bridge Community Health Clinic", address: "2450 Ontario Street", city: "Vancouver, BC", institution_id: "mc_128", password: "123", latitude: 49.2634895, longitude: -123.1045503, phone: '604-709-6400', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic4 = Clinic.create(name: "Bute Street Clinic", address: "1170 Bute Street", city: "Vancouver, BC", institution_id: "mc_143", password: "123", latitude: 49.2817928, longitude: -123.133344, phone: '604-786-2228', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic5 = Clinic.create(name: "Downtown Community Health Centre", address: "569 Powell Street", city: "Vancouver, BC", institution_id: "mc_178", password: "123", latitude: 49.2830416, longitude: -123.0914945 , phone: '604-255-3151', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic6 = Clinic.create(name: "Pine Free Clinic", address: "1985 West 4th Avenue", city: "Vancouver, BC", institution_id: "mc_103", password: "123", latitude: 49.2682371, longitude: -123.1499767, phone: '604-736-2391', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
  clinic7 = Clinic.create(name: "Three Bridges Community Health Centre", address: "1292 Hornby Street", city: "Vancouver, BC", institution_id: "mc_177", password: "123", latitude: 49.2775015, longitude: -123.1295489, phone: '604-736-9844', email: 'medicalclinic@example.com', website: 'medicalclinic.com')
end
