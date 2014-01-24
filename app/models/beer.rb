class Beer < ActiveRecord::Base
  
include RatingAverage  
  
	belongs_to :brewery
	has_many :ratings, dependent: :destroy

	
	
	def to_s
	bre = Brewery.find_by id:brewery_id
	" #{bre.name} #{name}"
	end
end

