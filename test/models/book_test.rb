require 'test_helper'

class BookTest < ActiveSupport::TestCase

  def setup
    @book = Book.new(title: "The Notebook")
  end

  test "book should be valid" do
    assert @book.valid?
  end

end
