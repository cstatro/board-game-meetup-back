class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:games,:bio,:profile_pic
end
