class CreateSpreeContacts < ActiveRecord::Migration
  def change
    create_table :spree_contacts do |t|

      t.timestamps
    end
  end
end
