class CreateRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :records do |t|
      t.string :name, null: false, default: ""
      t.string :amount, null: false, default: 0

      t.timestamps
    end

    add_index :records, :name, unique: true
    add_reference :records, :author, null: false, foreign_key: { to_table: :users, on_delete: :cascade }
  end
end
