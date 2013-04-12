class LineItem < ActiveRecord::Base
  attr_protected :build_id, :product_id #attr_accessible :build_id, :product_id
  belongs_to :product
  belongs_to :cart
end
