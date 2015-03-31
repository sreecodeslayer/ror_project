class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.column :name,:string,:limit => 100, :default =>"",:null => false
      t.column :regnum, :integer, :limit => 4, :default =>0,:null => false
      t.column :semester, :string, :limit => 4, :default =>"",:null => false
      t.column :branch, :string, :limit => 4, :default =>"",:null => false
      t.column :email, :string, :limit => 50, :default =>"",:null => false
      t.column :password, :string, :limit => 10, :default =>"",:null => false
      t.column :created_at, :datetime
    end
  end

  def self.down
    drop_table :students
  end
end
