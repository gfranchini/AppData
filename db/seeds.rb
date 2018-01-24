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
#     environments_attributes: [{environment: 'Development'}]
#   )
# end

projects = {
  "OmegaXL" => "Omega 3 site with Larry King",
  "GreatHealthWorks": "The GHW store.",
  "Towzing Site": "Towzing wordpress landing page.",
  "Chat": "Internal chat tool for IBOs.",
  "IBO-IMS": "Tool used to check IBO sales.",
  "Client Services": "Client dashboard to view phone metrics.",
  "Case": "Used by QA team.",
  "New You": "Wordpress site for newyou.com",
  "Great LearningWorks": "Wordpress site.",
  "NCTD": "Moodle site.",
  "Prebiophage": "Probiotic site.",
  "GHW University": "Freddie's moodle site.",
  "Great VirtualWorks": "Wordpress landing page.",
  "Pennwell": "Freddie's client's moodle site.",
  "Click Safety": "Freddie's client's moodle site.",
  "Great DataWorks": "",
  "Git GHW": "GHW Applications team internal git repository.",
  "Testimonials": "Site to collect product testimonials.",
  "Omaprem": "",
  "OmegaXLSport": "Landing page for future site.",
  "Great CloudWorks": "Wordpress site for GCW.",
  "ProbioticXL": "Probiotic site.",
  "Miles Dupree": "Miles' bio page.",
  "Ken Meares": "Ken's bio page.",
  "Dr. Sharon McQuillan": "The Doc's bio page.",
  "XL VirtualClassroom": "",
  "GLW OnDemand": "Moodle store for online learning.",
  "Try OmegaXLNow": "Marketing site for OmegaXL",
  "Password Reset": "To reset your password.",
  "Totalee": "Hair product store.",
  "WWE OmegaXL": "OmegaXL with WWE sponsorship.",
  "Towzing App": "Mobile app to summon towers, like Uber.",
  "GVW University": "Freddie's training site."
}

projects.each do |name,description|
  Project.create!(
    name: "#{name}",
    description: "#{description}"
  )

end

puts "#{projects.length} projects were created."

Environment.create!(
  name: "Development",
  project_id: 1,
  docker: true,
  rancher: true
)

Environment.create!(
  name: "QA",
  project_id: 1,
  docker: true,
  rancher: true
)

Environment.create!(
  name: "Production",
  project_id: 1,
  docker: true,
  rancher: false
)

Environment.create!(
  name: "Training",
  project_id: 3,
  docker: true,
  rancher: false
)

Environment.create!(
  name: "Staging",
  project_id: 2,
  docker: true,
  rancher: false
)

Environment.create!(
  name: "Test",
  project_id: 4,
  docker: true,
  rancher: true
)

puts "6 Environments created."

20.times do |x|
  Server.create!(
    hostname: "APPDevelopment#{x+1}",
    ip: "10.1.10.#{x+1}",
    cpu: "4",
    memory: "8",
    storage: "50",
    location: "VLAN",
    operating_system: "Centos7",
    environment_id: "#{rand(1..6)}"
  )
end

puts "20 servers were created."
