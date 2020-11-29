class ShoesController < ApplicationController

before_action :set_shoe, only:[:show, :edit, :update]
before_action :redirect_if_not_logged_in

  def new
    @shoe = Shoe.new
    @shoe.build_brand
  end

  def create
     @shoe = Shoe.new(shoe_params)
     @shoe.user_id = session[:user_id]

    if @shoe.save #this is where validations happen
      #@shoe.image.purge
      #@shoe.image.attach(params[:shoe][:image])
      redirect_to shoe_path(@shoe)
    else
      @shoe.build_brand
      render :new
    end
  end

  def index
    @shoes = Shoe.order_by_rating.includes(:brand)
  end

  def show
    @user = current_user
  end

  def edit
  end

  def update
    if @shoe.update(ice_cream_params)
      @shoe.image.purge
      @shoe.image.attach(params[:shoe][:image])
      redirect_to shoe_path(@shoe)
    else
      render :edit
    end
  end

  private

  def shoe_params
    params.require(:shoe).permit(:model, :description, :brand_id, brand_attributes: [:name])
  end

  def set_shoe
     @shoe = Shoe.find_by(params[:id])
     redirect_to shoes_path if !@shoe
  end

end
