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



  ##### class methods #####

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.select do |customers|
      customers.first_name == name.split(" ")[0] && customers.last_name == name.split(" ")[1]
    end
  end

    def self.find_all_by_first_name(name)
      @@all.select do |customers|
        customers.first_name == name
    end
  end

  def self.all_names
    @@all.map do |customers|
      full_name = customers.first_name + " "+ customers.last_name
    end
  end


  ##### innstance methods #####

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end


  def num_of_reviews
    count = 0
    Review.all.each do |review|
      if review.customer == self
        count += 1
      end
    end
    count
  end


  def restaurants
    Review.all.select do |restaurants|
      restaurants.customer == self
    end
  end


end
