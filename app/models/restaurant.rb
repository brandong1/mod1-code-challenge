class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end

  def reviews #works
    Review.all.select {|review| review.restaurant == self}
  end

  def customers #works
    reviews.map {|review|review.customer}.uniq
  end

  def average_star_rating #works
    number = reviews.count
    total = reviews.reduce(0) {|sum, r| sum += r.rating}
    average = total / number
  end

end
