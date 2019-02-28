User.create(name: 'user', email: 'user@example.com', password_digest: '123456')

50.times do
  todo = Todo.create(title: Faker::Lorem.word, created_by: User.first.id)
  todo.items.create(name: Faker::Lorem.word, done: false)
end
