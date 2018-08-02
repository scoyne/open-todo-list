class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :email,

  def username
    object.username
  end
  
  def email
    object.email
  end
end
