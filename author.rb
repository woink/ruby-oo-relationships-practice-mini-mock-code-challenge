class Author
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def book_authors
        BookAuthor.all.select{|book_author| book_author.author == self }
    end

    def books
        self.book_authors.map { |book| book.book}
    end

    def write_book(title, word_count)
        new_book = Book.new(title, word_count)
        BookAuthor.new(new_book, self)
    end

    def total_words
        books.map { |book| book.word_count }.sum
    end
    
    def self.most_words
        total_words_array = Author.all.map do |author| 
            author.total_words 
        end
        Author.all[total_words_array.index(total_words_array.max)]
    end

end