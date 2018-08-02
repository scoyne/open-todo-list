class ListSerializer < ActiveModel::Serializer

  attributes :id, :name, :private, :user_id,

  def name
    object.name
  end
  
  def private
    object.private
  end

  user_id
    object.user_id
  end
end

