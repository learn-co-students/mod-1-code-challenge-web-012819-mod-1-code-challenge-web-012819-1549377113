class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

#####Class_Methods#####

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.select do |customer|
        (customer.first_name + " " + customer.last_name) == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

###Instance_Methods####

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    total = 0
    Review.all.each do |review|
      if review.customer == self
        total += 1
      end
    end
    total
  end

  def restaurants
    reviews = Review.all.select do |review|
      review.customer == self
    end
    reviews.map do |restaurant_review|
      restaurant_review.restaurant
    end.uniq
  end

end
