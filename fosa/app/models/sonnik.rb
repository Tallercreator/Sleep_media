class Sonnik < ApplicationRecord
    has_one_attached :image
    # has_many :tags, as: :taggable, dependent: :destroy
    # has_many :likes, as: :likeable, dependent: :destroy
  end
  