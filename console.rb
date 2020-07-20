require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author'

john = Author.new("John Author")
steve = Author.new("Steve Author")

john_book_one = john.write_book("My New Book", 500)
john_book_two = john.write_book("My second Book", 689)

steve_book_one = steve.write_book("Steve's world of sports", 982)
steve_book_two = steve.write_book("How to kick a ball", 8)

binding.pry


