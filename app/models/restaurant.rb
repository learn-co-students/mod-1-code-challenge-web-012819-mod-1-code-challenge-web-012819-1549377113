class Restaurant

 @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
   @@all
  end

  def self.find_by_name(name)
    @all.find do |restaurant|
       restaurant.name == name
    end
  end

def customers

end

def reviews
 Review.all.map do |review|
   if review.review ==
  end
end

def average_star_rating

end

def longest_review
  Review.all.each do |review|

  end
end

end
