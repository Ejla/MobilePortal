class Webclip < ActiveRecord::Base
  has_and_belongs_to_many :pages
  belongs_to :image
end
