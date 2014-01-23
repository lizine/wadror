class Beer < ActiveRecord::Base
	belongs_to :brewery
	has_many :ratings

	def average_rating
	 
	  " #{ratings.average('score')}"
	 
	end
	
	def to_s
	bre = Brewery.find_by id:brewery_id
	" #{bre.name} #{name}"
	end
end

