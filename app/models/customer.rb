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

  def self.all
    # return all customer instances
    @@all
  end

  def self.find_by_name(name)
    # iterate through customers
    # find first with same FULL name
    @@all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    # return customer instances with first name
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    # return full names
    @@all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def my_reviews
    # go through reviews, select just the ones
    # that belong to me
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    # count my_reviews (return num)
    self.my_reviews.count
  end

  def all_my_restaurants
    # just get restaurants from my_reviews
    # should return array 
    self.my_reviews.map do |review|
      review.restaurant
    end
  end

  def restaurants
    # return unique array (.uniq on all_my_restaurants)
    self.all_my_restaurants.uniq
  end

end
