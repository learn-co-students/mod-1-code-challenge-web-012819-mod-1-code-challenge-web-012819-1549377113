class Customer

  @@all = []

  attr_accessor :first_name, :last_name

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
    @@all.full_name.find do |names|
      names == name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |names|
      names == name
    end
  end

  def self.all_names
    @@all.
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating)
  end

  def num_reviews
    Review.all.select do |v|
      self.review == v
    end
  end

  def restaurants
    Review.select do |review|
      review.customer == self
    end.uniq
  end

end
