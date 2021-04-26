# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Job.destroy_all

admin = User.new(email: 'aamontoo@gmail.com', password: 'ArthurA1!', password_confirmation: 'ArthurA1!', admin: true, developer: true, employer: true)
admin.skip_confirmation!
admin.save

developer = User.new(email: 'developer@gmail.com', password: 'ArthurA1!', password_confirmation: 'ArthurA1!', admin: false, developer: true, employer: false)
developer.skip_confirmation!
developer.save

employer = User.new(email: 'employer@gmail.com', password: 'ArthurA1!', password_confirmation: 'ArthurA1!', admin: false, developer: false, employer: true)
employer.skip_confirmation!
employer.save

Job.create(
  company_name: "Google",
  company_website: "https://google.com",
  company_description: Faker::Hipster::paragraph,
  description: Faker::Hipster::paragraph,
  compensation_range: "170,000 - 180,000",
  compensation_type: "Full-time",
  estimated_hours: nil,
  featured: false,
  featured_until: nil,
  headquarters: "California",
  link_to_apply: "https://google.com/apply",
  price: 199,
  published_at: DateTime.now,
  remote: false,
  status: "published",
  title: "Rails developer at Google",
  upsell_type: nil,
  years_of_experience: "5",
  user_id: admin.id,
)

Job.create(
  company_name: "Dropbox",
  company_website: "https://dropbox.com",
  company_description: Faker::Hipster::paragraph,
  description: Faker::Hipster::paragraph,
  compensation_range: nil,
  compensation_type: "Contract",
  estimated_hours: "more than 100",
  featured: true,
  featured_until: nil,
  headquarters: "California",
  link_to_apply: "https://dropbox.com/apply",
  price: 299,
  published_at: DateTime.now,
  remote: true,
  status: "published",
  title: "Ruby developer at Dropbox",
  upsell_type: "best",
  years_of_experience: "5",
  user_id: employer.id,
)

Job.create(
  company_name: "Apple",
  company_website: "https://apple.com",
  company_description: Faker::Hipster::paragraph,
  description: Faker::Hipster::paragraph,
  compensation_range: "240,000 - 250,000",
  compensation_type: "Full-time",
  estimated_hours: nil,
  featured: false,
  featured_until: nil,
  headquarters: "California",
  link_to_apply: "https://apple.com/apply",
  price: 299,
  published_at: DateTime.now,
  remote: false,
  status: "published",
  title: "Ruby developer at Apple",
  upsell_type: "best",
  years_of_experience: "8",
  user_id: employer.id,
)