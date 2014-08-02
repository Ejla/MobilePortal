class Webclip < ActiveRecord::Base
  has_many :page_webclips
  has_many :pages, through: :page_webclips
  belongs_to :webclip_icon
  
  validates :name, presence: { message: 'cannot be blank' }
  validates :link, presence: { message: 'cannot be blank' }
end
