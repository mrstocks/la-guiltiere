class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:inside]
  helper SliderHelper

  def home
    @sliders = Slider.find(:all);
  end
  
  def inside
  end 
    
end
