class CreateDomainAdmins < ActiveRecord::Migration
  def self.up
    create_table :domain_admins do |t|
      t.string :username
      t.string :domain
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :domain_admins
  end
end
