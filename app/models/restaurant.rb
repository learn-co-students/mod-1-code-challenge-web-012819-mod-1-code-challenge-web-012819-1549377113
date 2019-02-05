class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |rest|
      rest.name == name
  end
end

def customers
array = Review.all.map do |review|
  if review.restaurant== self
    review.customer
end
end.compact.uniq
end

def reviews
Review.all.select do |review|
review.restaurant == self
end
end

def average_star_rating
  sum = 0

  my_ratings = Review.all.map do |review|
  if review.restaurant == self
    review.rating
end
end.compact
my_ratings.each do |num|
  sum += num
end
(sum/my_ratings.length).to_f

end

def longest_review
  longest_content = 0
  Review.all.each do |review|
    if review.restaurant == self && review.content.length > longest_content
      longest_content = review.content.length
    end
  end
  longest_content
end

end
