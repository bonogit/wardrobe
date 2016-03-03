class GarmentController < ApplicationController


  def new
     @category = Category.all
     @garment =Garment.new
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
      if @gar.save
        redirect_to "/garment/#{params[:id]}"
      else 
        flash[:danger] = "Garment update failed. Please try again."
        redirect_to "/garment/#{params[:id]}"
      end
  end

  def create
      # @addgarment = Garment.new
      # @addgarment.garment_name = params[:garment_name]
      # @addgarment.description = params[:description]
      # @addgarment.brand = params[:brand]
      # @addgarment.size = params[:size]
      # @addgarment.status = params[:status]
      # @addgarment.buy_value = params[:buy_value]
      # @addgarment.buy_date = params[:buy_date]
      # @addgarment.sold_value = params[:sold_value]
      # @addgarment.record_date = Date.today
      # @addgarment.user_id = current_user.id
      # # @addgarment.user_id = 1
      # @addgarment.image = params[:add_image]
      # # puts params[:add_image]
      # @addgarment.category_id = params[:category_id]
      @garment = Garment.new(addgarment_params)
      # binding.pry
      if view_context.log_in?
        @garment.user_id = view_context.current_user.id
      end
      @garment.record_date = Date.today
      if @garment.save
        redirect_to '/show'
      else
        flash[:danger] = "Create new garment not successful! Please try again."
        redirect_to '/garment/new'
      end
  end

  def destroy
      @garment = Garment.find(params[:id])
      @garment.destroy
      redirect_to '/show'
  end

  private
  def addgarment_params
    params.require(:garment).permit(:garment_name, :description, :brand,:size,
      :status,:buy_value,:buy_date,:sold_value, :image, :category_id)
  end
  def image_size_validation
    errors[:image] << "should be less than 5000KB" if image.size > 5.megabytes
  end
end
