class Book < ApplicationRecord
  require 'csv'

  validates :title, presence: true
  validates :id, numericality: true

  def self.import(file)
    uploader = CsvUploader.new
    uploader.store!(file)
    CSV.foreach(file.path, headers: true) do |row|

      book_hash = row.to_hash
      book = Book.where(id: book_hash["id"])

      if book.count == 1
        book.first.update_attributes(book_hash)
      else
        Book.create!(book_hash)
      end
    end
  end
end
