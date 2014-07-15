class PageWebclip < ActiveRecord::Base
  belongs_to :page
  belongs_to :webclip
  default_scope { order('position') }
end
