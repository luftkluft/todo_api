FactoryBot.define do
  factory :comment do
    body { Faker::Movies::StarWars.character + 'test' }
  end
end
