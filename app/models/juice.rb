class Juice < ApplicationRecord
    has_many :posts, :dependent => :destroy
    mount_uploader :image, ImageUploader
end
