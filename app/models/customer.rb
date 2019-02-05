class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)#str, full customer
    a = name.split(' ')
    first = a[0]
    last = a[1]
    self.all.find { |cust| cust.first_name == first && cust.last_name == last }
  end

  def self.find_all_by_first_name(name) #str, return array of all customer with firstname
    self.all.select { |cust| cust.first_name == name }
  end

  def self.all_names#array of all customer full name
    self.all.map { |cust| "#{cust.first_name} #{cust.last_name}" }
  end

  def my_reviews
    Review.all.select { |rev| rev.customer == self }
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    self.my_reviews.map do |rev|
      rev
    end.count
  end

  def restaurants
    self.my_reviews.map { |rev| rev.restaurant }.uniq
  end

end
