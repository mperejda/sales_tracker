class AddDefaultValues < ActiveRecord::Migration
  def change
    change_column :contacts, :assigned, :string, :default => "John"
    change_column :contacts, :source, :string, :default => "HFC"
  end
end
