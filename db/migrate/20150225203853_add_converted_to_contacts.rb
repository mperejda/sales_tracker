class AddConvertedToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :converted, :string, :default => "false"
  end
end
