class Review

  attr_reader :customer, :restaurant
  attr_accessor :rating, :content
  @@all = []


  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end
  #
  # def rating
  #   if rating > 5
  #     rating = 5
  #   elsif rating < 1
  #     rating = 1
  #   else
  #     rating
  #   end
  # end





end
