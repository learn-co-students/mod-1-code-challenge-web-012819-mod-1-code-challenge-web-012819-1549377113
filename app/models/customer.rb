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

  def self.find_by_name(name)
    self.all.find { |customer| customer.full_name == name }
  end

  def self.find_all_by_first_name(name)
    self.all.select { |customer| customer.first_name == name }
  end

  def self.all_names
    self.all.map { |customer| customer.full_name }
  end

  def add_review(restaurant, content, rating)
    if rating > 5
      rating = 5
    elsif rating < 1
      rating = 1
    else
      rating
    end
    Review.new(self, restaurant, content, rating)
  end

  def my_reviews
    my_reviews = Review.all.select { |review| review.customer == self }
  end

  def num_reviews
    my_reviews.length
  end

  def restaurants
    my_restaurants = my_reviews.map { |review| review.restaurant }
    my_restaurants.uniq
  end



end
