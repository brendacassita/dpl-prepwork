# A menu for the user
# A collection of books
# User needs to be able to see avaialbe books
# User needs to be able to check out a book
# User needs to be able to return a book
# A user needs to be able to see what books they have checked out
# Things to note:
# - A user can't check out a book if the book is not avaiable
# - If a user returns a book then the book should become avaialbe again

# @user_books = []
# @library_books ={}
# def menu
# end
# def view_books
# end
# def  checkout_book
# cant check out a book if its not available
# end
# def return_book
# end
# def view_my_books
# end

@user_books = []
@library_books = {
  the_hobbit: true,
  algorithms_to_live_by: true,
  moby_dick: true,
  flatland: true
}

def seperator
  puts "*" * 10
  puts
end

def menu
  seperator
  puts "Please Make a Selection"
  puts "1) View Available Books"
  puts "2) Checkout A Book"
  puts "3) Return A Book"
  puts "4) View Your Books"
  puts "5) Exit"
end

def user_selection
  menu
  choice = gets.to_i
  case choice
  when 1
    view_books
  when 2
    checkout_book
  when 3
    return_book
  when 4
    view_my_books
  when 5
    puts "Goodbye!"
    exit
  else
    puts "Invalid Choice Try again"
  end

  user_selection
end

def print_book_list(list)
  seperator
  list.each_with_index { |book, index| puts "#{index + 1}) #{book.to_s.gsub('_', ' ')}" }
end

def view_books
  books = @library_books.select { |_, value| value }.keys
  print_book_list(books)
  books
end

def view_my_books
  print_book_list(@user_books)
end

def checkout_book
  puts "Select a book"
  books = view_books
  choice = gets.to_i
  if choice > 0 && choice <= books.length
    book = books[choice - 1] #We added 1 to show user readable format but our array is 0 indexed
  else
    puts "Invalid Choice"
    checkout_book
  end

  @library_books[book] = false
  @user_books << book
end

def return_book
  puts "Select a book to return"
  view_my_books
  choice = gets.to_i
  if choice > 0 && choice <= @user_books.length
    #GOOGLE USED HERE SINCE WE DON'T KNOW HOW TO REMOVE SOMETHING FROM AN ARRAY YET
    book = @user_books.delete_at(choice - 1) # deleting the book from the array will return it back
    @library_books[book] = true
  else
    puts "Invalid Choice"
    return_book
  end
end


user_selection