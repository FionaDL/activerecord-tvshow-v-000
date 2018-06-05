class Show < ActiveRecord::Base
  def highest_rating
    Show.maximum(:rating)
  end
end
