class User < Struct.new(:id, :username, :email)
  def avatar_url
    require 'digest/md5'

    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email.downcase)}"
  end
end