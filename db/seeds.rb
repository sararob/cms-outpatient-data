# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach("lib/data/medicare.csv", :headers => :first_row) do |row|
  Procedure.create(
      apc: row[0],
      provider_id: row[1],
      provider_name: row[2],
      provider_street: row[3],
      provider_city: row[4],
      provider_state: row[5],
      provider_zip: row[6],
      hospital_region: row[7],
      outpatient_services: row[8],
      avg_submitted_charges: row[9],
      avg_total_payments: row[10]
  )
  console.log(".")
end
