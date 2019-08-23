class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end


  def show
    @pizza = Pizza.find(params[:id])
  end 

  def new
    @pizza = Pizza.new
  end 

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      then redirect_to pizza_path(@pizza)
    else redirect_to new_pizza_path
    end
  end  


  private 

  def pizza_params 
      
    params.require(:pizza).permit(:pizza_id, :name, :ingredients)


  end 



end
