class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :pitch, :description
  attribute :object_name, :key => :object
  attribute :created_at, :key => :created
  attribute :updated_at, :key => :updated

  def object_name
    'idea'
  end

end
