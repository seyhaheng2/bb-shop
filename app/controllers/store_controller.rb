class StoreController < ApplicationController
  def index
    @hats = Hat.order(:name)
    @slides = Slide.order(:title)
  end

  def about
  end

  def contact
  end

  def blog
  end

  def show
  end
end
