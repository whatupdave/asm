# example users
['whatupdave', 'chrislloyd', 'mdeiters'].each do |username|
  user = User.new(
    email: "#{username}@example.com",
    username: username
  )
  user.password, user.password_confirmation = 'password'
  user.save!
end