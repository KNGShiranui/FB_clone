class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :favorites, dependent:destroy
  has_many :favorite_user, through: :favorites, source: :user
  validates :content, presence: true,length: { minimum: 1, maximum: 140 }
end
