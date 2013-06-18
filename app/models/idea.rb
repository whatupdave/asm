class Idea < ActiveRecord::Base
  self.primary_key = :id

  validates :name, length: { minimum: 2, maximum: 255 }

end
