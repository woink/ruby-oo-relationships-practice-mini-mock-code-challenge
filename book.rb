class Book
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def self.all
        BookAuthor.all.map { |book| book.title }
    end

    def word_count
        BookAuthor.all.map do |book| 
            book == self
            book.word_count
        end
    end

    def title
        BookAuthor.all.map do |book|
            book == self
            book.title
        end
    end

    def author 
        BookAuthor.all.map do |book|
            book.author == self
            book.author
        end
    end


end

