class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.integer :price
      t.integer :date
      t.string :category

      t.timestamps
    end
  end
end
