class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
