class Beer < ActiveRecord::Base
  
include RatingAverage  
       
	belongs_to :brewery
	has_many :ratings, dependent: :destroy
	has_many :raters, through: :ratings, source: :user
	 validates :name, length: { minimum: 3}

	
	
	def to_s
	bre = Brewery.find_by id:brewery_id
	" #{bre.name} #{name}"
	end
end

