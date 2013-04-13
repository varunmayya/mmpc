class Product < ActiveRecord::Base
  resourcify
  default_scope :order => 'name'
  attr_accessible :available, :img_url, :name, :price, :requires, :part_type , :company_id

  validates :img_url, :format => {:with => %r{\.(gif|jpg|png)$}i, :message => "Please ensure that the image extension is correct."}
  validates :name, :presence => true, :uniqueness => true

  belongs_to :company
  has_many :line_items
  
  before_destroy :ensure_unreferenced
  

  private
def ensure_unreferenced
if line_items.empty?
return true
else
errors.add(:base, 'Line Items Present')
return false
end
end

  def name_with_price
    "#{name}  [Rs.#{price}]"
  end

end
