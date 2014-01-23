class RatingsController < ApplicationController
def index
  @ratings = Rating.all
end

def new
    @rating = Rating.new
    @beers = Beer.all
  end
  
  def create
      Rating.create params.require(:rating).permit(:score, :beer_id)
      redirect_to "http://www.cs.helsinki.fi"
  end
end
