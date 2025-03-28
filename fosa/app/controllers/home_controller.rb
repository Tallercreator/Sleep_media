class HomeController < ApplicationController
  def index
      @articles = Article.all
      @product_cards = ProductCard.all
      @sonniks = Sonnik.all
  end
end

