require 'activerecord_uuid'

class Idea < ActiveRecord::Base
  include ActiveRecord::UUID

  belongs_to :user
  validates :user_id, presence: true

  validates :name, presence: true,
                   length: { minimum: 2, maximum: 255 }

  validates :pitch, length: {maximum: 255}

  has_many :presales

  scope :approved, -> { where('approved_at is not null') }

  def sum_presales
    presales.inject(0) {|sum, ps| sum + ps.amount }
  end

  def count_presales
    presales.size
  end

  def presale_for(user)
    presales.find_by(user: user)
  end

end
