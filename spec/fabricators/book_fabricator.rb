Fabricator(:book) do
  title {Faker::Book.title }
  author {Faker::Book.author}
  published_at {Faker::Date.backward(17)}
end