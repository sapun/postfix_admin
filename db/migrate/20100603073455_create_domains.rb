class CreateDomains < ActiveRecord::Migration
  def self.up
    create_table :domains do |t|
      t.string :domain
      t.text :description
      t.integer :aliases
      t.integer :mailboxes
      t.integer :maxquota
      t.integer :quota
      t.string :transport
      t.boolean :backupmx
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :domains
  end
end
