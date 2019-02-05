require 'pry'

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
    self.full_name.find do |full_name|
      full_name.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.find_all do |first_name|
      first_name.first_name == name
    end
  end

  def self.all_names
    self.full_name.map do |full_name|
      full_name
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  # def num_reviews
  #   total = 0
  #   Review.all.map do |reviewed|
  # total += reviewed.customer
  # end
  # end

  def restaurants
    Review.all.map do |reviewed|
      reviewed.restaurant
    end.uniq
  end

end
