class Product < ActiveRecord::Base
  resourcify
  default_scope :order => 'name'
  attr_accessible :available, :img_url, :name, :price, :requires, :type , :company_id

  validates :img_url, :format => {:with => %r{\.(gif|jpg|png)$}i, :message => "Please ensure that the image extension is correct."}
  validates :name, :type , :presence => true, :uniqueness => true

  belongs_to :company
end
