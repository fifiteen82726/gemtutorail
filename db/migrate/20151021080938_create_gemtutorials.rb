class CreateGemtutorials < ActiveRecord::Migration
  def change
    create_table :gemtutorials do |t|
      t.string :name
      t.string :repo
      t.text :description
      t.string :genre
      t.integer :score

      t.timestamps null: false
    end
  end
end
