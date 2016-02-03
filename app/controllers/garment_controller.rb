class GarmentController < ApplicationController
  def new
     @category = Category.all
  end

  def show
     @garment = Garment.find(params[:id])
  end

  def edit
      @garment = Garment.find(params[:id])
      @category = Category.all
  end

  def update
      @gar = Garment.find params[:id]
      @gar.description = params[:description]
      @gar.brand = params[:brand]
      @gar.size = params[:size]
      @gar.status = params[:status]
      @gar.buy_value = params[:buy_value]
      @gar.buy_date = params[:buy_date]
      @gar.sold_value = params[:sold_value]
      @gar.image = params[:update_image]
      @gar.category_id = params[:category_id]
      @gar.save
      redirect_to "/garment/#{params[:id]}"
  end

  def create
      @addgarment = Garment.new
      @addgarment.garment_name = params[:garment_name]
      @addgarment.description = params[:description]
      @addgarment.brand = params[:brand]
      @addgarment.size = params[:size]
      @addgarment.status = params[:status]
      @addgarment.buy_value = params[:buy_value]
      @addgarment.buy_date = params[:buy_date]
      @addgarment.sold_value = params[:sold_value]
      @addgarment.record_date = Date.today
      # @addgarment.user_id = current_user.id
      # @addgarment.user_id = 1
      @addgarment.image = params[:add_image]
      # puts params[:add_image]
      @addgarment.category_id = params[:category_id]
      @addgarment.save
      redirect_to '/show'
  end

  def destroy
      Garment.find(params[:id]).destroy
      redirect_to '/show'
  end
end
