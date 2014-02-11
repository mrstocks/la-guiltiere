class Slider < ActiveRecord::Base
  mount_uploader :filename, SliderUploader

end
