class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :mobileno

      t.timestamps null: false
    end
  end
end
