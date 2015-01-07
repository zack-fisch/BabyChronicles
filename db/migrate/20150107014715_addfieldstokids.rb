class Addfieldstokids < ActiveRecord::Migration
  def change
  	 add_column :kids, :parent1, :string
     add_column :kids, :parent2, :string
     add_column :kids, :parent1bio, :text
     add_column :kids, :parent2bio, :text
     add_column :kids, :bio, :text
     add_column :kids, :birthday, :date
  end
end
