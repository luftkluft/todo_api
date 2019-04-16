FactoryBot.define do
  factory :comment do
    body { Faker::Movies::StarWars.character }
  end
end
