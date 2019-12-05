class UserSerializer < ActiveModel::Serializer
  # include Rails.application.routes.url_helpers

  attributes :id, :username, :email, :isAdmin, :liked_posts, :avatar
  has_many :likes
  has_many :comments

end
