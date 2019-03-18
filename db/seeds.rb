User.create!(name: 'user', email: 'user@example.com', password: '123456', password_confirmation: '123456')
User.create!(name: 'seconduser', email: 'seconduser@example.com', password: '123456', password_confirmation: '123456')

25.times do
  todo = Todo.create(title: Faker::Lorem.word, created_by: User.first.id)
  todo.items.create(name: Faker::Lorem.word, done: false)
end

25.times do
  todo = Todo.create(title: Faker::Lorem.word, created_by: User.last.id)
  todo.items.create(name: Faker::Lorem.word, done: false)
end
