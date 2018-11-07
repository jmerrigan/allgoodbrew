class PagesController < ApplicationController
  def welcome
    @products = Product.all
  end

  def about
  end

  def contact
  end

end
