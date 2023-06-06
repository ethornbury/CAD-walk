class CreateProfileTable < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_tables do |t|
      t.string     :first_name
      t.string     :last_name
      t.string     :display_name
	  t.string	   :mobile
      t.text       :other
      t.references :user, null: false, foreign_key: true

      t.timestamps

    end
  end
end
