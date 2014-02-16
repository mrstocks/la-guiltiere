class PagesController < ApplicationController

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
