# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create admin accounts for the Playerly admins
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

# Create options for user to select their gender
Gender.create!([
  {identity: "Male"},
  {identity: "Female"},
  {identity: "Rather not say"}
])

# Create options for group owners to select user approval process
ApprovalType.create!([
  {option: "Automatic"},
  {option: "Manual"},
  {option: "Decline"}
])

# Create options to select group type
GroupType.create!([
  {option: "Club"},
  {option: "Team"},
  {option: "Community"}
])

# Create options to select sports
Sport.create!([
  {name: "Archery"},
  {name: "Badminton"},
  {name: "Baseball"},
  {name: "Basketball"},
  {name: "Bowling"},
  {name: "Boxing"},
  {name: "Chess"},
  {name: "Cricket"},
  {name: "Cycling"},
  {name: "Fencing"},
  {name: "Fishing"},
  {name: "Fitness"},
  {name: "Football"},
  {name: "Golf"},
  {name: "Gymnastics"},
  {name: "Hockey"},
  {name: "Horse Racing"},
  {name: "Judo"},
  {name: "Karate"},
  {name: "Rugby"},
  {name: "Running"},
  {name: "Soccer"},
  {name: "Surfing"},
  {name: "Table Tennis"},
  {name: "Volleyball"},
  {name: "Wrestling"},
  {name: "Yoga"}
])

# Create options to select sport skill level
SkillLevel.create!([
  {name: "Beginner"},
  {name: "Intermediate"},
  {name: "Expert"}
])

# Create options to select user membership roles
Role.create!([
  {name: "Request"},
  {name: "Member"},
  {name: "Moderator"},
  {name: "Owner"}
])
