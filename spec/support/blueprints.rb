require 'machinist/active_record'

User.blueprint do
  username { "user-#{sn}" }
  email    { "user-#{sn}@example.com" }
  password { 'password' }
  password_confirmation { 'password' }
end