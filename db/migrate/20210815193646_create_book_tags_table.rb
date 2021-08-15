class CreateBookTagsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :book_tags do |t|
      t.belongs_to :book
      t.belongs_to :tag
    end
  end
end
