class User < ActiveRecord::Base
  
  include RatingAverage  
 
  has_secure_password
  has_many :ratings
  has_many :beers, through: :ratings

 validates :username, uniqueness: true
  validates :username, length: { in: 3..15 }
end
