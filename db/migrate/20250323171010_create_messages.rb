class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.text :content

      t.timestamps
    end

    add_reference :messages, :user, foreign_key: true
    add_reference :messages, :task, foreign_key: true
  end
end
