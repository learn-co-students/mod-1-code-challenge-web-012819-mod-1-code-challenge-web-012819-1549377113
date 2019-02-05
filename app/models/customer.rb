class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
		@@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

	def add_review(restaurant, content, rating)
		Review.new(self, restaurant, content, rating)
	end

  def reviews
  	Review.all.select { |review| review.customer == self }
  end

	def num_reviews
		reviews.length
	end

	def restaurants
		reviews.map(&:restaurant).uniq
	end

  # - given a string of a **full name**, returns the **first customer** whose full name matches
	def self.find_by_name(name)
		@@all.find { |customer| customer.full_name == name }
	end

  # - given a string of a first name, returns an **array** containing all customers with that first name
	def self.find_all_by_first_name(first_name)
		@@all.select { |customer| customer.first_name == first_name }
	end

  # - should return an **array** of all of the customer full names
	def self.all_names
			@@all.map { |customer| customer.full_name }
	end

  def self.all
  	@@all
  end

end
