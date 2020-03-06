class Review
    attr_reader :rating, :customer, :restaurant
  
    @@all = []

    def initialize(customer, restaurant, rating)
      @customer = customer
      @restaurant = restaurant
      @rating = rating
      @@all << self
    end

    def self.all 
        @@all
    end

    # already have customer instance method due to attr_reader
    # already have rating instance method due to attr_reader

    # already have restaurant instance method due to attr_reader

end