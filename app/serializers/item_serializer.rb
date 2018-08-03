class ItemSerializer < ActiveModel::Serializer
  attributes :id, :entry, :completed,

  def entry
    object.entry
  end
  
  def completed
    object.entry
  end
end
