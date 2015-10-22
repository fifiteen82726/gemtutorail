class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :path
      t.text :code
      t.string :note
      t.integer :sequence

      t.timestamps null: false
    end
  end
end
