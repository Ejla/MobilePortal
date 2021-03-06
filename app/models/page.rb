class Page < ActiveRecord::Base
  has_many :page_webclips, -> { order('page_webclips.position') }, :dependent => :destroy
  has_many :webclips, through: :page_webclips
  accepts_nested_attributes_for :page_webclips, allow_destroy: true,  reject_if: proc { |attributes| attributes['webclip_id'].blank? }
  
  validates :name, presence: { message: 'cannot be blank' }
  
end
