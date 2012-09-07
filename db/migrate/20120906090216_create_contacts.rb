class CreateContacts < ActiveRecord::Migration
  def change
    create_table :spree_contacts do |t|
      t.string :email
      t.text :message
      t.string :name
      t.string :subject
      t.timestamps
    end
  end
end
