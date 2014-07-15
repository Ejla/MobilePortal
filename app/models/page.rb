class Page < ActiveRecord::Base
  has_and_belongs_to_many :webclips
  
  def to_param
    "#{id}-#{name.parameterize}"
  end
end
