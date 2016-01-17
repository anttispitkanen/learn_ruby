#08_book_titles

class Book

  attr_accessor :title


  def title=(title)
    new_title = title.split
    title_in_progress = [new_title[0].capitalize]
    #title_in_progress << new_title[0].capitalize

    new_title[1..-1].each do |f|
      do_not_capitalize = ["a", "an", "the", "for", "in", "of", "and"]
      if do_not_capitalize.include?(f.downcase)
        title_in_progress << f.downcase
      else
        title_in_progress << f.capitalize
      end
    end
    @title = title_in_progress.join(" ")
  end

end


book = Book.new
book.title = "to kill a mockingbird with a the an stone Of For horseman :D"

puts book.title
