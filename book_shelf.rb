require_relative "book"
#might need
class BookShelf < Book
	attr_reader :shelf

	def initialize
		@shelf = []
	end

	def add_to_book_shelf(book)
		@shelf << book
	end

	def checked_out(book)
		# this will kick out all books with same object reference
		puts "in checkout"
		book.checked_out
	end

	def check_if_book_available(book)
		

	end

	def display_shelf
		puts "Books in the library:"
		@shelf.each do |book| 
			puts "#{book.title} by #{book.author} - #{book.status}"
		end

	end


end
