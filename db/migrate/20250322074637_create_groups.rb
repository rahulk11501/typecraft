class CreateGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :groups do |t|
      t.string :name

      t.timestamps
    end

    add_reference :tasks, :group, foreign_key: true
    add_reference :users, :group, foreign_key: true
  end
end
