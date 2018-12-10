require 'test_helper'

class BookTest < ActiveSupport::TestCase

  def setup
    @book = Book.new(title: "The Notebook")
  end

  test "title should be present" do
    @book.title = " "
    assert_not @book.valid?
  end

  test "id should be numeric" do
    @book.id = 1
    assert @book.valid?
  end

end
