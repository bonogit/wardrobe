class Garment < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  #define a pipeline for uploader and model 'Garment'
  mount_uploader :image, ImageUploader
  #make sure the owner's name is present
  # validates :name, presence: true
end
