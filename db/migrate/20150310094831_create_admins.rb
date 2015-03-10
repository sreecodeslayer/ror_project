class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

      t.timestamps null: false
    end
  end

  def self.up
    create_table :admins do |t|

    end
  end

  def self.down
    drop_table :admins
  end
end
