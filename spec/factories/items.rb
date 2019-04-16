FactoryBot.define do
  factory :item do
    name { Faker::Movies::StarWars.character }
    done { false }
    todo_id { nil }

    trait :with_comment do
      after(:create) do |item|
        create(:comment, item: item)
      end
    end
  end
end
