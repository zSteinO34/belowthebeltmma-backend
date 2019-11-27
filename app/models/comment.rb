class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post

    validates :comment_body, presence: true
    validates :comment_body, length: { maximum: 250 }
end
