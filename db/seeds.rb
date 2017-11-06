folder1 = Folder.where(title: Faker::Lorem.characters(10)).create
folder2 = Folder.where(title: Faker::Lorem.characters(8)).create

3.times do
  note = folder1.notes.create(
    title: [Faker::Hacker.adjective, Faker::Hacker.noun].join(' ').titleize,
    content: Faker::Hacker.say_something_smart
  )
end

3.times do
  note = folder2.notes.create(
    title: [Faker::Hacker.adjective, Faker::Hacker.noun].join(' ').titleize,
    content: Faker::Hacker.say_something_smart
  )
end
