class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer          :date
      t.integer          :studytime
      t.text          :content 
      t.references :category, null: false, foreign_key: true

    end
  end
end
