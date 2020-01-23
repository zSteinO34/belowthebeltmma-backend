class Post < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :comments
    has_many :post_tags
    has_many :tags, through: :post_tags
    has_many :liking_users, through: :likes, source: :user

    validates :title, presence: true 
    validates :content, presence: true
end
