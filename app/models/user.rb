class User < ActiveRecord::Base
  self.primary_key = :id

  has_many :ideas

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # HACK for Devise. It's not this class' responsibility to set its ID. Ideally
  # it would come from another service.
  before_create do
    self.id = SecureRandom.uuid
  end

  def avatar_url
    require 'digest/md5'
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email.downcase)}"
  end
end
