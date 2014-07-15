class Webclip < ActiveRecord::Base
  has_many :page_webclips
  has_many :pages, through: :page_webclips
  belongs_to :image
end
