class ListSerializer < ActiveModel::Serializer

  attributes :id, :name, :private,

  def name
    object.name
  end
  
  def private
    object.private
  end
end