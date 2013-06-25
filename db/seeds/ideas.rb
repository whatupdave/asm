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
kjdb = Idea.create!(
  user: User.find_by(username: 'whatupdave'),
  slug: 'kjdb',
  name: 'KJDB',
  pitch: 'Helps you find karaoke venues and songs to sing',
  description: 'An app that helps you find karaoke venues and songs to sing',
  submitted_at: 7.days.ago,
  approved_at: 5.days.ago,
)

Idea.create!(
  user: User.find_by(username: 'whatupdave'),
  slug: 'key-cutter',
  name: 'Key Cutter',
  pitch: 'Take a photo of your key and you get a copy in the mail',
  description: 'Take a photo of your key and you get a copy in the mail',
  submitted_at: 7.days.ago,
  approved_at: 5.days.ago,
)

Idea.create!(
  user: User.find_by(username: 'chrislloyd'),
  slug: 'splitty',
  name: 'Splitty',
  pitch: 'An iPhone app that lets you easily split the bill at restaurants',
  description: 'An iPhone app that lets you easily split the bill at restaurants',
  submitted_at: 3.days.ago,
)

Idea.create!(
  user: User.find_by(username: 'chrislloyd'),
  slug: 'plotlines',
  name: 'Plotlines',
  pitch: 'Make interactive cartoons with friends on your phone',
  description: 'Draw panels with friends, create a story',
)

# presales

kjdb.presales.create(
  user: User.find_by(username: 'whatupdave'),
  amount: 15 * 100,
)

kjdb.presales.create(
  user: User.find_by(username: 'chrislloyd'),
  amount: 25 * 100,
)