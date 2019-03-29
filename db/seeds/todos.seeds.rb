25.times do
  todo = Todo.create(title: Faker::Lorem.word, user_id: User.first.id)
  todo.items.create(name: Faker::Lorem.word, done: false)
end

25.times do
  todo = Todo.create(title: Faker::Lorem.word, user_id: User.last.id)
  todo.items.create(name: Faker::Lorem.word, done: false)
end
