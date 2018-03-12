class Post < ApplicationRecord
  validates :title, :introduction, :content, :url, presence: true
  validates :image_url, allow_blank: true, format: {
  with: %r{\.(gif|jpg|png)\Z}i,
  messsage:'must be a URL for GIF, JPG or PNG image.'
  }
end
