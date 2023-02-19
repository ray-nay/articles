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

    def contributors
            Article.all.filter do |m|
                m.magazine == self
            end.map do |mag| mag.author 
        end 
    end
    def self.find_by_name(name)
        self.all.find { |magazine| magazine.name == name }
      end
end 