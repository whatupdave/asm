module ActiveRecord::UUID
  def self.included(model)
    model.primary_key = :id

    model.before_create do
      self.id = SecureRandom.uuid
    end
  end
end