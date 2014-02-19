module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Laguiltiere"      
    end
  end

end
