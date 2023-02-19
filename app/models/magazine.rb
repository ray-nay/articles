require_relative 'article'

class Magazine
    attr_accessor :name, :category
    
    @@all = []

    def self.all
        @@all
    end 

    def initialize(name:, category:)
        @name = name
        @category = category
        @@all << self
    end 

   
end 