class Webclip < ActiveRecord::Base
  has_and_belongs_to_many :pages
  has_one :image
end
