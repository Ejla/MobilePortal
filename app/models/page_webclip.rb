class PageWebclip < ActiveRecord::Base
  belongs_to :page
  belongs_to :webclip
end
