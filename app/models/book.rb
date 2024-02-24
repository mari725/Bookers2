class Book < ApplicationRecord
  belongs_to :user


  def get image
      unless image.attached?
          file_path = Rails.root.join('bookers2/default-image.jpg')
          image.attach(io: file.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')

      end
      image
  end

  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }

end
