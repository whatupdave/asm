require 'activerecord_uuid'

class Presale < ActiveRecord::Base
  include ActiveRecord::UUID

  belongs_to :user
  belongs_to :idea
end