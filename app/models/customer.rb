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
    @@all << full_name
  end

  def restaurants()
    Restaurant.all.map {|full_name| full_name == self}.uniq

  end



end
