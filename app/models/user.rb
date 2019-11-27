class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_many :likes
    has_many :liked_posts, through: :likes, source: :post

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, presence: true
    validates :username, length: { minimum: 3 }
    validates :bio, length: { maximum: 250 }
    validates :password, presence: true
    # validates :password, length: { in: 5..20 }
end
