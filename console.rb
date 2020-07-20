require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author'

alex = Author.new("Alejandro Jodorowsky")
brad = Author.new("Brad Phillips")
tom = Author.new("Tom Wright")
jean = Author.new("Jean Cocteau")
elena = Author.new("Elena Ferrante")
alan = Author.new("Alan W. Watts")
olga = Author.new("Olga Tokarczuk")
ottessa = Author.new("Ottessa Moshfegh")
bradley = Author.new("Bradley Hope")

spirit = Book.new("The Spiritual Journey of Alejandro Jodorowsky", 234)
BookAuthor.new(alex, spirit)

essays = Book.new("Essays and Ficitions", 152)
BookAuthor.new(essays, brad)

whale = Book.new("Billion Dollar Whale", 374)
BookAuthor.new(whale, tom)
BookAuthor.new(whale, bradley)

enfants = Book.new("Les Enfants Terribles", 123)
BookAuthor.new(enfants, jean)

brilliant = Book.new("My Brilliant Friend", 374)
BookAuthor.new(brilliant, elena)

wisdom = Book.new("The Wisdom of Insecurity", 90)
BookAuthor.new(wisdom, alan)

homesick = Book.new("Homesick For Another World", 292)
BookAuthor.new(homesick, ottessa)




binding.pry


