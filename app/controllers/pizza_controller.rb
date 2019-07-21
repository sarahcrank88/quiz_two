class PizzaController < ApplicationController
  def index
    @pizza = Pizza.order("RANDOM()").first
  end

  def new
    @pizza = Pizza.new
  end
  
  def create
    Pizza.create(pizza_params)
    redirect_to root_path
  end
  
  private

  def pizza_params
    params.require(:pizza).permit(:name, :toppings)
  end
end


