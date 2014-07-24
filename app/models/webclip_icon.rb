class WebclipIcon < Image
  has_many :webclips
  
  def self.model_name
    Image.model_name
  end
end
