class HomepageController < ApplicationController
  helper SliderHelper

  def index
    @sliders = Slider.find(:all) 

  end
end
