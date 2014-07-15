class Page < ActiveRecord::Base
  has_many :page_webclips
  has_many :webclips, through: :page_webclips
  
  def to_param
    "#{id}-#{name.parameterize}"
  end
end
