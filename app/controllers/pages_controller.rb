class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:inside]
  helper SliderHelper

  def home
    @sliders = Slider.find(:all);
  end

  def about_the_house
  end

  def about_the_caravan
  end

  def about_the_garden
  end
  
  def inside
  end 
    
end
