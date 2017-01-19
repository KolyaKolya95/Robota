class Job < ActiveRecord::Base
	belongs_to :category

	def self.search(search)
		key = "%#{search}%"
		if search
			where('title LIKE ? OR company LIKE ?', key, key)
		else
			all
		end
	end


end
