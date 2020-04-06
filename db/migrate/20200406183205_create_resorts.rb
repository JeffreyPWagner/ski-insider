class CreateResorts < ActiveRecord::Migration[6.0]
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :state
      t.string :image
      t.boolean :epic
      t.boolean :ikon

      t.timestamps
    end
    add_index :resorts, :name, unique: true
  end
end
