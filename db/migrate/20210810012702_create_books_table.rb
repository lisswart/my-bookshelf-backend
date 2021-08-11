class CreateBooksTable < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :book_author
      t.string :book_description
      t.string :book_group
      t.boolean :is_notes_added
      t.string :notes

      t.belongs_to :status, foreign_key: true
      
    end
  end
end
