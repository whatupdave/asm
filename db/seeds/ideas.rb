# example users
['whatupdave', 'chrislloyd', 'mdeiters'].each do |username|
  user = User.new(
    email: "#{username}@example.com",
    username: username
  )
  user.password, user.password_confirmation = 'password'
  user.save!
end

# example ideas
Idea.create!(
  user: User.find_by(username: 'whatupdave'),
  name: 'KJDB',
  pitch: 'Helps you find karaoke venues and songs to sing',
  description: 'An app that helps you find karaoke venues and songs to sing'
)

Idea.create!(
  user: User.find_by(username: 'whatupdave'),
  name: 'Key Cutter',
  pitch: 'Take a photo of your key and you get a copy in the mail',
  description: 'Take a photo of your key and you get a copy in the mail'
)

Idea.create!(
  user: User.find_by(username: 'chrislloyd'),
  name: 'Splitty',
  pitch: 'An iPhone app that lets you easily split the bill at restaurants',
  description: 'An iPhone app that lets you easily split the bill at restaurants'
)

Idea.create!(
  user: User.find_by(username: 'chrislloyd'),
  name: 'Plotlines',
  pitch: 'Make interactive cartoons with friends on your phone',
  description: 'Draw panels with friends, create a story'
)
