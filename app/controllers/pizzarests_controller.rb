class Pizzarests < ApplicationController
    def index
      @pizzarests = Pizzarest.all
    end
  
  
    def show
      @pizzarest = Pizzarest.find(params[:id])
    end 
  
    def new
      @pizzarest = Pizzarest.new
    end 
  
    def create
      @pizzarest = Pizzarest.new(pizzarest_params)
      if @pizzarest.save
        then redirect_to pizzarest_path(@pizzarest)
      else redirect_to new_pizzarest_path
      end
    end  
  
  
    private 
  
    def pizzarest_params 
        
      params.require(:pizzarest).permit(:pizza_id, :restaurant_id)
  
  
    end 
  
  
  
  end