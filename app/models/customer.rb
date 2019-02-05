class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all_names
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
    @@all.find do |name|
      if name = full_name
      name
    end
  end
end

def self.find_all_by_first_name(name)
  full_name[0]
end

#not working yet




















end # end of Customer class
