class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :uid
      t.string :name
      t.string :email
    end
  end
end
