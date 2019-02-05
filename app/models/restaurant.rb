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
    @@all.find do |names|
      names == name
    #  binding.pry
    end
  end

  def customers
    Review.all.select do |info|
    if info.restaurant == self
      info.customer
    end.uniq
  end


  def reviews
    Review.all.select do |info|
      info.restaurant
    end
  end

  def average_star_rating

  end

  def longest_review

  end

end
