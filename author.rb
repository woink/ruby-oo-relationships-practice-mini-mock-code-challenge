class Author
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def self.all
        BookAuthor.all.map { |book| book.author }.uniq
    end

    def write_book(title, word_count)
        BookAuthor.new(title, self, word_count)
    end

    def books
        BookAuthor.all.filter { |book| book.author == self }
    end

    def total_words
        books.map {|book| book.word_count}.sum
    end
    
    def self.most_words
        total_words_array = Author.all.map do |author| 
            author.total_words 
        end
        Author.all[total_words_array.index(total_words_array.max)]
    end

end

