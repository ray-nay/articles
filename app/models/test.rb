require_relative 'article'
require_relative 'author'
require_relative 'magazine'

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
end 


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

      def article_titles
            self.articles.map { |article| article.title }
          end
          
          def contributing_authors
            self.articles.group_by { |article| article.author }.select { |author, articles| articles.length > 2 }.keys
          end
      end


#Some test instances to try out and see if the deliverables are working.

author1 = Author.new("John Doe")
puts author1.name

article1 = Article.new(author: "Hello", magazine: "Vogue", title: "New Discoveries in Quantum Physics")
puts article1.title

magazine1 = Magazine.new(name: "NY Times", category: "News")
puts magazine1.category

