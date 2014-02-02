class Rating < ActiveRecord::Base
	belongs_to :beer
	belongs_to :user
        has_many :users
validates :score, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: 50,
                                    only_integer: true }

	def to_s
	b = Beer.find_by id:beer_id
	" #{b.name} #{score}"
	end
end
