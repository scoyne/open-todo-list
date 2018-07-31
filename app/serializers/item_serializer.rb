class ItemSerializer < ActiveModel::Serializer
  attributes :id, :entry

  def entry
    object.entry
  end
end
