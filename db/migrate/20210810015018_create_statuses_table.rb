class CreateStatusesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :statuses do |t|
      t.string :read_status
    end
  end
end
