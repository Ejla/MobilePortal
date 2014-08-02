class WebclipIcon < Image
  has_many :webclips
  
  # redirect to Images controller
  # def self.model_name
  #   Image.model_name
  # end
  
  def icon_label
    %(<img src="data:image/jpg;base64, #{base64_string}" width="70" />).html_safe
  end
end
