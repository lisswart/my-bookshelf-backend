class CreateGroupsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :group_name
    end
  end
end
