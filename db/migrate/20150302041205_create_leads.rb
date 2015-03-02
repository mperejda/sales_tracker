class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :project
      t.string :needs
      t.string :source
      t.string :contact
      t.string :assigned
      t.string :temperature
      t.string :value

      t.timestamps null: false
    end
  end
end
