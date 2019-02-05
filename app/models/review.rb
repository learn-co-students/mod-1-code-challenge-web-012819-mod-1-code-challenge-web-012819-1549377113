class Review

  @@all = []

  def initialize(customer, review)
    @customer = customer
    @review = review
    @@all << self
  end

  def customer(all_customer)
    all_customer = Restaurant.all.map do |customer|
    end
  end

  def add_review(restaurant, content, raiting)
    Review.all.map { |review| review == self }
  end

  def reviews
    Restaurant.reviews
  end

end
