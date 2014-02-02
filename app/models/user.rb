class User < ActiveRecord::Base
  
  include RatingAverage  
 
  has_secure_password
  has_many :ratings
  has_many :beers, through: :ratings

  has_many :memberships
  has_many :beer_clubs, through: :memberships

 validates :username, uniqueness: true
  validates :username, length: { in: 3..15 }


def to_s
	u = User.find_by id:id
	" #{u.username}"
	end
end
