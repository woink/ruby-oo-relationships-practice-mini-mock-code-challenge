class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def books
        Book.all.filter { |book| book.author == self }
    end

    def total_words
        word_count_array = books.map { |trait| trait.word_count }
        word_count_array.sum
    end
    
    def self.most_words
        total_words_array = Author.all.map do |name| 
            name.total_words 
        end
        Author.all[total_words_array.index(total_words_array.max)]
    end

end

