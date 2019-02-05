class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name) #str, restname, return first rest mathcing
    self.all.find { |restau| restau.name = name }
  end

  def my_rrating
    Review.all.select { |rev| rev.restaurant == self }
  end

  def customers
    self.my_rrating.map { |rev| rev.customer}.uniq
  end

  def reviews
    self.my_rrating.map { |rev| rev.content }
  end

  def num_of_rates
    self.my_rrating.count
  end

  def average_star_rating
    total = 0
    count = 0
    a = self.my_rrating.map { |rev| total += rev.rating }
    count = a.count
    average = total.to_f / count.to_f
  end

  def longest_review
    longest = 0
    long_content = nil
    self.my_rrating.map do |rev|
      if longest < rev.content.length
        long_content = rev.content
      end
    end
    long_content
  end

end
