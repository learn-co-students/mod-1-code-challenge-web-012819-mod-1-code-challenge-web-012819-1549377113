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
    self.all.find do |full_name|
      full_name.customer == self
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |first_name|
      first_name.customer == self
    end
  end
#binding.pry
  def self.all_names
    self.all.map do |full_name|
      full_name.customer == self
    end
end

def add_review(restaurant, rating, content)
  Review.new(self, restaurant, rating, content)
end

def num_reviews
  total_reviews = Review.all.select do |review|
    review.customer == self
    end
  total_reviews.length
  end

  def restaurants

  end

end
