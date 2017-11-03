# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do |x|
#   Project.create!(
#     name: "Project #{x + 1}",
#     description: "Dashboard for IBOs.",
#     rancher: true,
#     environments_attributes: [{environment: 'Dev'}]
#   )
# end

Environment.create!(
  environment: "Dev"
)

Environment.create!(
  environment: "QA"
)

Environment.create!(
  environment: "Production"
)

Environment.create!(
  environment: "Training"
)

Environment.create!(
  environment: "Staging"
)

Environment.create!(
  environment: "Test"
)

puts "6 Environments created."

Project.create!(
  name: "Chat",
  description: "Internal tool to communicate with team members.",
  environment_id: 1
)

Project.create!(
  name: "IBO-IMS",
  description: "Internal tool to check sales of IBOs.",
  environment_id: 1
)

Project.create!(
  name: "Client Services",
  description: "Internal tool to communicate with team members.",
  environment_id: 1
)

Project.create!(
  name: "CASE",
  description: "Internal tool that's always broken.",
  environment_id: 1
)

Project.create!(
  name: "Great DataWorks",
  description: "Database for data.",
  environment_id: 1
)

puts "5 projects were created."

5.times do |x|
  Server.create!(
    hostname: "APPDEV#{x+1}",
    ip: "10.1.10.#{x+1}",
    cpu: "4",
    memory: "8",
    storage: "50",
    location: "VLAN",
    operating_system: "Centos7",
    project_id: "#{rand(1..5)}"
  )
end

puts "5 servers were created."
