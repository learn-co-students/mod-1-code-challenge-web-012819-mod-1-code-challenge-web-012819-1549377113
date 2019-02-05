class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    @@all.find do |the_name|
      # binding.pry
      if the_name = name
        name
      end
    end
  end

  def customers
    Review.all.select do |review|
      review.restaurant == self
    end
    .uniq
  end

  def longest_review
    my_reviews = Review.all.select do |review|
      review.restaurant == self
    end
    my_reviews.sort_by |review|
    review
  end

#have to find the longest review, sort by length in descending order, return review[0]










end #end of Restaurant class
