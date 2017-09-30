class Comment < ApplicationRecord
  belongs_to :post
  has_many :user
  validates_presence_of :post_id
  validates_presence_of :body
end
