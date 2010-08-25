class CreateRedirects < ActiveRecord::Migration
  def self.up
    create_table :redirects do |t|
      t.string :address
      t.string :goto

      t.timestamps
    end
  end

  def self.down
    drop_table :redirects
  end
end
