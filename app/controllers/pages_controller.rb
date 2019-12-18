class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.all
  end
end
