
class Membership < ActiveRecord::Base
belongs_to :beer_club
belongs_to :user
has_many :users

validates :user, uniqueness: {scope: :beer_club}

def to_s
	m = BeerClub.find_by id:beer_club_id
        

	if m.nil?
		"Käyttäjä ei ole vielä liittynyt olutseuraan"
	else
	" #{m.name} "

	end
end
end
