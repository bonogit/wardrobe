class WardrobeController < ApplicationController

def about
end

def show 
 @category = Category.all
 @garments = Garment.all
  # if params[:category_id].nil? || params[:category_id].empty?
  #    @garments = Garment.where(user_id: current_user.id)
  # else
  #    @garments = Garment.where(category_id: params[:category_id], user_id: current_user.id)
  # end
    
end

end
