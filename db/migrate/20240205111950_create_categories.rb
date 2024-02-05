class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false, default: ""
      t.string :icon, default: "https://pixsector.com/cache/517d8be6/av5c8336583e291842624.png"

      t.timestamps
    end

    add_index :categories, :name, unique: true
    add_reference :categories, :user, null: false, foreign_key: { on_delete: :cascade }
  end
end
