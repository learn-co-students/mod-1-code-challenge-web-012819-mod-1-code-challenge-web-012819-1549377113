class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |name|
      name.restaurant == self
    end
  end

  def customers
    Review.all.select do |customer|
      customer.restaurant == self
    end
  end

end
