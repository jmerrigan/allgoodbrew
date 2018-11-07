class PagesController < ApplicationController
  def welcome
    @products = Product.all
  end

  def about
  end

end
