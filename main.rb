require_relative 'article.rb'
require_relative 'author.rb'
require_relative 'magazine.rb'



author1 = Author.new("John Doe")
author2 = Author.new("Jane Smith")
article1 = Article.new(author1, "Article 1" "Article 4")
article2 = Article.new(author2, "Article 2" "Article 5")
article3 = Article.new(author1, "Article 3" "Article 6")

author1.articles