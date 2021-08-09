class CreateReadStatusTable < ActiveRecord::Migration[6.1]
  def change
    create_table :read_statuses do |t|
      t.string :read_status
    end
  end
end
