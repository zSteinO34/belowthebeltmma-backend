class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :isAdmin, :liked_posts
  has_many :posts
  has_many :likes
  has_many :comments
end
