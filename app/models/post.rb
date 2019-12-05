class Post < ApplicationRecord
    has_one_attached :header_img
    belongs_to :user
    has_many :likes
    has_many :comments
    has_many :post_tags
    has_many :tags, through: :post_tags
    has_many :liking_users, through: :likes, source: :user

    validates :title, presence: true 
    validates :content, presence: true
    # validates :header_img, presence: true
end
