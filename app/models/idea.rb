class Idea < ActiveRecord::Base
  self.primary_key = :id

  belongs_to :user
  validates :user_id, presence: true

  validates :name, presence: true,
                   length: { minimum: 2, maximum: 255 }

  validates :pitch, length: {maximum: 255}

end