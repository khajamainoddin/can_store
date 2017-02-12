class Bill < ActiveRecord::Base
	searchkick
  belongs_to :user
end
