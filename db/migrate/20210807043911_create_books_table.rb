class CreateBooksTable < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :book_author
      t.string :book_description

      t.belongs_to :read_status, foreign_key: true
      t.belongs_to :fiction_nonfiction_group, foreign_key: true
    end
  end
end
