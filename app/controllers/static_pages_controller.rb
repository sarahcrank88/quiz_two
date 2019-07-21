class StaticPagesController < ApplicationController

  def index
    @pizza = Pizza.first
  end
  
end
