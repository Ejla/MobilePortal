class Webclip < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_one :image
end
