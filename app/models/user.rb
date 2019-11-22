class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_many :likes
    has_many :liked_posts, through: :likes, source: :post

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

end
