
class Membership < ActiveRecord::Base
belongs_to :beer_club
belongs_to :user
has_many :users



def to_s
	me = Membership.find_by id:user_id
        club_id = me.beer_club_id
	kerho = BeerClub.find_by id:club_id

	if me.nil?
		"Käyttäjä ei ole vielä liittynyt olutseuraan"
	else
	" #{kerho.name} "

	end
end
end
