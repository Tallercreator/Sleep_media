class Article < ApplicationRecord
    has_many :tags, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_one_attached :image
  
    validates :title, presence: true
    validates :content, presence: true

    def likes_count
      likes.count
    end
    
end
  