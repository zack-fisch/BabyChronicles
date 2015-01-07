class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.text :bio
      t.date :birthday
      t.text :parent1
      t.text :paretn2

      t.timestamps null: false
    end
  end
end
