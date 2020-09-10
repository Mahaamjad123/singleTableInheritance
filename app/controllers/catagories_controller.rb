class CatagoriesController < ApplicationController
    #before_action :set_catagory, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.find(params[:user_id])
    @catagory = @user.send(set_type.pluralize).new 
  end

  def edit
  end

  def create
    @user = User.find(params[:user_id])
    @catagory = @user.send(set_type.pluralize).new(catagory_params)
    if @catagory.save
      redirect_to @user
    else
      render :new
    end
  end

  def update
    if @catagory.update(catagory_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @catagory.destroy
    redirect_to @user
  end

  private
    def set_catagory
      @user = User.find(params[:user_id])
      @catagory = @user.send(set_type.pluralize).find(params[:id]) 
    end

    def set_type
      case params[:type]
      when 'Car'
        'car'
      when 'Motorcycle'
        'motorcycle'
      end
    end

    def catagory_params
      params.require(set_type.to_sym).permit(:type, :price, :color, :model, :company, :city, :address)
    end
end
