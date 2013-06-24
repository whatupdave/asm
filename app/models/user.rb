require 'activerecord_uuid'

class User < ActiveRecord::Base
  include ActiveRecord::UUID

  has_many :ideas

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def avatar_url
    require 'digest/md5'
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email.downcase)}"
  end
end
