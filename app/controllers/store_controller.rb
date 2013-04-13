class StoreController < ApplicationController
before_filter :authenticate_user!
before_filter :setup_instances 
helper_method :check_and_render_proc


 def submit     
      save_all(Product.find(params[:processor][:id]), Product.find(params[:gfxcard][:id]), Product.find(params[:powersupply][:id]))
      respond_to do |format|
      format.html {redirect_to :controller => "store" , :action => "index"}
    end
 end

private 

def setup_instances
  @products = Product.all
  @gfxcards = Product.where(part_type: 'GFXCARD').where(available: true)
  @processors = Product.where(part_type: 'PROCESSOR').where(available: true)
  @powersupplies = Product.where(part_type: 'POWERSUPPLY').where(available: true)
end

def save_all(proc, gfxc, psu)
session[:proc]= proc.id
session[:gfxc] = gfxc.id
session[:powersupply]  = psu.id 
end

end

