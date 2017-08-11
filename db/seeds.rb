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
    description: "Netus consequat a vestibulum lacus suspendisse a aptent dis at turpis consequat diam ad ornare accumsan eu euismod suscipit erat non.",
    rancher: true
  )
end

puts "5 projects were created."
