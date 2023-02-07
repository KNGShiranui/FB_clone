class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :favorites, dependent:destroy
  has_many *favorite_user, through: :favorites, source: :user
end
