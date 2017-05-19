class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

      t.string :name
      t.integer :age
      t.string :gender
      t.string :food
      t.string :city

      t.timestamps
    end
  end
end
