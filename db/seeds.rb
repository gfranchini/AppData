# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |x|
  Project.create!(
    name: "Project #{x + 1}",
    description: "Dashboard for IBOs.",
    rancher: true
  )
end

puts "5 projects were created."


5.times do |x|
  Environment.create!(
    environment: "Dev",
    project_id: "#{x + 1}"
  )
end

puts "5 environments were created."
