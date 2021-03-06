class User < ActiveRecord::Base
  
  include RatingAverage  
 
  has_secure_password
  has_many :ratings, dependent: :destroy
  has_many :beers, through: :ratings

  has_many :memberships, dependent: :destroy
  has_many :beer_clubs, through: :memberships

 validates :username, uniqueness: true
  validates :username, length: { in: 3..15 }
#validates :password, length: { minimum: 4 }
validates :password, :format => {:with => /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{6,}/, message: "must be at least 4 characters and include one number and one upper case letter."}


def to_s
	u = User.find_by id:id
	" #{u.username}"
	end

def favorite_beer
    return nil if ratings.empty?
    ratings.order(score: :desc).limit(1).first.beer
  end

end
