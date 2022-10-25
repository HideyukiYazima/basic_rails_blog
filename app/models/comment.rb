class Comment < ApplicationRecord
  belongs_to :articles
  validates :body, presence: true
end
