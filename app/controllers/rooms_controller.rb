class RoomsController < ApplicationController
  before_filter :get_site_title

  def index
  end

  private
    def get_site_title
      @title = "La Guiltere - Our rooms"
    end 
end
