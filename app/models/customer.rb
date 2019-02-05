class Customer
  attr_accessor :first_name, :last_name

  @@all = []


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    full_name = name.split
    first_name = full_name[0]
    last_name = full_name[1]
    @@all.find do |customer|
      customer.first_name == first_name && customer.last_name == last_name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    full_name = name.split
    first_name = full_name[0]
    last_name = full_name[1]
    @@all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end


end
