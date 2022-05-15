class Portfolio < ApplicationRecord
    belongs_to :home
    mount_uploader :image, ImageUploaders
end
