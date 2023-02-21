class Picture < ApplicationRecord
  validates :content, presence: true, length: { maximum: 160 }
end
