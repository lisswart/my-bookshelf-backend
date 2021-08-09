class CreateFictionNonfictionGroupsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :fiction_nonfiction_groups do |t|
      t.string :group_name
    end
  end
end
