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

    def magazines
        articles.map do |article|
            article.magazine.
        end.uniq
        end
        
    end 
    def add_article(magazine:, title:)
        Article.new(magazine, title)   
    end

    def topic_areas
        magazines.map do |magaz|
            magaz.category
        end 
end 
    
