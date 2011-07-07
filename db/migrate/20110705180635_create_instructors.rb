class CreateInstructors < ActiveRecord::Migration
  def self.up
    create_table :instructors do |t|
      t.string :name
      t.integer :age
      t.text :experience
      t.text :qualifications
      t.text :hobbies

      t.timestamps
    end
  end

  def self.down
    drop_table :instructors
  end
end
