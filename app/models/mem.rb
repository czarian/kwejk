class Mem < ActiveRecord::Base
  after_validateion(on: :create) do 
  	self.active = false
  end

  end
  belongs_to :user
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
