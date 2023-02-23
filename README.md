# Name of the Project
Articles - without Active Record 
### Author : Name Date
Catherine Renee Mumbi 19/02/2023
## Project Description
This project implements a magazine domain  and has 3 models: Articles , Author and Magazine. An Author has many Articles, a Magazine has many Articles, and Articles belong to both Author and Magazine.

 Author - Magazine is a many to many relationship.

 It incorporates instances and class methods as well as array methods in order to map out the object relationships.

## Project Setup

Fork and clone this repository to your local machine

Navigate to the project directory in your terminal and open the project with the text editor of your choice.

Open the terminal and run bundle install to install the app's dependencies.

Run ruby app/models/test.rb to test whether the deliverables are working. 

There are 3 test cases provided to create instances of author, article and magazine to check if the deliverables have been met. Feel free to create new test instances of your own on the test.rb file. 

## Creating new instances 
You can use the following code in the test.rb file to create new instances. Feel free to add your own instances.

Creating a new author:

author1 = Author.new("John Doe")
puts author1.name

Creating a new article:

article1 = Article.new(author: "Hello", magazine: "Vogue", title: "New Discoveries in Quantum Physics")
puts article1.title

Creating a new magazine:
magazine1 = Magazine.new(name: "NY Times", category: "News")
puts magazine1.category


## Technologies Used
1.Ruby
2.Bundler 
3.Git
*****

## Contact Information
* 1723renee@gmail.com
*****
