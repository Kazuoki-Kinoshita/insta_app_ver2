class Picture < ApplicationRecord
  validates :content, presence: true, length: { maximum: 160 }
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :Favorite_users, through: :favorites, source: :user
  mount_uploader :image, ImageUploader
end