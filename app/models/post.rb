class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  acts_as_votable
  
  has_attached_file :image,
                    styles: { :medium => "640x" },
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, 
                    content_type: ['image/jpeg', 'image/gif', 'image/png']


	
end
