class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, 
             :isAdmin
  has_many :posts
  has_many :likes
  has_many :comments
end
