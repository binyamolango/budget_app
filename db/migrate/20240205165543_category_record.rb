class CategoryRecord < ActiveRecord::Migration[7.1]
  def change
    create_join_table :categories, :records do |t|
      t.index :category_id
      t.index :record_id
    end
  end
end
