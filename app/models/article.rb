
class Article
    attr_reader :author, :magazine, :title

    @@ll = []
    def initialize(author:, magazine:, title:)
        @author = author
        @magazine = magazine
        @title = title
        # @@all << self 
    end 
    def self.all
        @@all
    end

    
end 


# author = Author.new("John Doe")
# magazine = Magazine.new("New Yorker")
# article = Article.new(author, magazine, "The Future of AI")

# puts article.author