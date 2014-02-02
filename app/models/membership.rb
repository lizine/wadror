
class Membership < ActiveRecord::Base
belongs_to :beer_club
has_many :users
end
