class Article < ApplicationRecord
  validates :title, presence :true, length: { minimum:3, message: '短すぎて投稿できません！' }
  validates :body, presence :true
end
