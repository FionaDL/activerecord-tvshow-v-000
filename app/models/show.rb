require 'pry'


class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("rating = #{Show.highest_rating}")[0]
  end

  def lowest_rating
    def self.highest_rating
      Show.minimum(:rating)
    end

end
