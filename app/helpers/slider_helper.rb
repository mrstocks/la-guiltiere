module SliderHelper
  def slider(images)
    output = '';
   
    # TODO; Refactoring  

 
    images.each do |image|
      output += "<div data-src='"
      output += image.filename.to_s
      output += "'>"
      output += "<div class='camera_caption fadeIn'>
                    <div class='container_12'>
                        <div class='row'>
                            <div class='grid_12'>
                                <a href='#' class='s-btn'>Book now!<i class='fa fa-arrow-circle-right'></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>"
    end
    output 
  end
end
