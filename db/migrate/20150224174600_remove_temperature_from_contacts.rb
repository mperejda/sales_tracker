class RemoveTemperatureFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :temperature, :string
  end
end
