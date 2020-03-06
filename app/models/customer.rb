class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all 
  end

  #Returns a unique array of all restaurants a customer has reviewed
  def restaurants #works
    results = Review.all.select {|review|review.restaurant}
    # results.map {|review|review.customer == self}.uniq
    results.map {|review|review.restaurant.name}.uniq
  end
  #Given a restaurant object and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, rating) #works
    Review.new(self, restaurant, rating) #go to Review#initialize
  end

  def num_reviews # works
    Review.all.select{|review| review.customer == self}.count
  end

  def self.find_by_name(full_name) # works
    all.find{|customer|customer.full_name}
  end

  def self.find_all_by_given_name(given_name) # works
    customer = self.all.find_all{|n| n.full_name.start_with?(given_name)}
  end
  # def self.find_all_by_given_name(given_name)
  #   find_by_name.map {|n| n.full_name.start_with?(name)}
  #   #=> empty array
  # end
end
