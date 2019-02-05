class Restaurant
  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  ###### class methods ######

  def self.all
    @@all
  end


  ##### instance #####

  def customers
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  def reviews
    self.customers.map do |customers|
      customers.content
    end
  end

  def average_star_rating
    average = 0
    self.customers.each do |customers|
    average += customers.rating
  end
  average = average / self.customers.length
end

def longest_review
  length = 0
  self.customers.map do |customers|
    if customers.content.length > length
      length = customers.content.length
      @long_review = customers.content
      end
    end
    @long_review
  end
end
