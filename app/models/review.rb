class Review

	attr_reader :customer, :restaurant, :content, :rating

  @@all = []

  def initialize(customer, restaurant, content, rating)
  	if rating.between?(1,5) && content.class == String
  		@customer, @restaurant, @content, @rating = customer, restaurant, content, rating
  		@@all << self
  	end
  end

	def self.all
  	@@all
  end
  
end

