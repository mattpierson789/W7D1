# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Cat.destroy_all

CAT_COLORS = %w(black white brown gray orange)

10.times do
  Cat.create!(
    birth_date: Faker::Date.between(from: 20.years.ago, to: Date.today),
    color: CAT_COLORS.sample,
    name: Faker::Creature::Cat.name,
    sex: %w(M F).sample,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true),
  )
end


