class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :temperature
      t.string :email
      t.string :phone_number
      t.string :assigned
      t.string :source

      t.timestamps null: false
    end
  end
end
