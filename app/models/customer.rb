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
    @@all
  end

  def self.find_by_name(full_name)
    self.all.find do |customer|
    (customer.first_name + ' ' + customer.last_name)  == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |customer|
      customer.first_name == first_name
    end
  end

def self.all_names
self.all.map do |customer|
(customer.first_name + ' ' + customer.last_name)
  end
end

def add_review(restaurant, content, rating)
Review.new(self, restaurant, rating, content)
end

def num_reviews
my_reviews = Review.all.select do |review|
review.customer == self
end
my_reviews.length
end

def restaurants
Review.all.map do |review|
  if review.customer == self
    review.restaurant
  end
end.compact.uniq
end

end
