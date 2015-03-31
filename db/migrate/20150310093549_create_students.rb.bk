class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

      t.timestamps null: false
    end
  end

  def self.up
    create_table :students do |t|

    end
  end

  def self.down
    drop_table :students
  end
end
