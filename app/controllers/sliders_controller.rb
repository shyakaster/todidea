class SlidersController < ApplicationController
  def index
    @sliders=Slider.all
  end
end