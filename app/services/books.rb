module Books
  def self.new_book(params, current_user)
    
    book = current_user.books.new(params)
    return ServiceContract.error("Error saving book!") unless book.save
    ServiceContract.success(book)
  end

  def self.update_book(book_id, params, current_user)

    book = current_user.books.find(book_id)
    return ServiceContract.error("Error Updating Book!") unless book.update(params)
    ServiceContract.success(book)
  end

  def self.destroy_book(book_id, current_user)
    book = current_user.books.find(book_id)
    ServiceContract.error("Error Destroying book") and return unless book.destroy
    ServiceContract.success(payload: nil)
  end
end