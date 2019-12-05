class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :img, :content, :user_id, :created_at, :header_img 
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :tags, through: :post_tags
end
