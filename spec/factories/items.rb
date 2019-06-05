FactoryBot.define do
  factory :item do
    name { Faker::Movies::StarWars.character }
    done { false }
    todo_id { nil }
    deadline { Time.now + 1.week }

    trait :with_comment do
      after(:create) do |item|
        create(:comment, item: item)
      end
    end
  end
end
