class CreateTips < ActiveRecord::Migration[6.0]
  def change
    create_table :tips do |t|
      t.string :title
      t.text :body
      t.references :resort, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :score
      t.integer :category

      t.timestamps
    end
  end
end
