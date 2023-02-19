require_relative 'article'

class Author 
    attr_accessor :name, :magazine, :article

    def initialize(name)
        @name = name
    end 

    def articles
        Article.all.filter do |article|
        article.author == self 
    end
    
end 

# author=Author.new('mike')
# puts author.name
