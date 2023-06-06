class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true
	  t.string     :first_name
      t.string     :last_name
      t.string     :display_name
	  t.string	   :mobile
      t.text       :other
      #t.references :user, null: false, foreign_key: true

      t.timestamps

    end
	add_foreign_key :profiles, :users
  end
end
