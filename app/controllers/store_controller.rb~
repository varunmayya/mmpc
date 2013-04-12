class StoreController < ApplicationController
  def index
  @products = Product.all
  @gfxcards = Product.where(part_type: 'GFXCARD')
  @processors = Product.where(part_type: 'PROCESSOR')
  @powersupply = Product.where(part_type: 'POWERSUPPLY')
  end
end
