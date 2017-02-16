class Show < ActiveRecord::Base


def self.highest_rating
  show = Show.maximum(:rating)
  show
end


  def self.most_popular_show
    show = Show.where(highest_rating).first
    show
  end

  def self.lowest_rating
    show = Show.minimum(:rating)
    show
  end

  def self.least_popular_show
    # binding.pry
    show = Show.where(rating: lowest_rating).first
    show
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    show = Show.where("rating > 5")
    show
  end

  def self.shows_by_alphabetical_order
    show = Show.order(:name)
    show 
  end

end
