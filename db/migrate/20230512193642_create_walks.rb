class CreateWalks < ActiveRecord::Migration[7.0]
  def change
    create_table :walks do |t|
      t.string :name
      t.text :desc
      t.decimal :start_lat
      t.decimal :start_long
      t.decimal :end_lat
      t.decimal :end_long
      t.decimal :duration
      t.boolean :loop
      t.integer :difficulty

      t.timestamps
    end
  end
end
