class CreateTrainings < ActiveRecord::Migration
  def self.up
    create_table :trainings do |t|
      t.string :name
      t.date :date
      t.integer :study_load
      t.boolean :closed
      t.integer :students
      t.float :price
      t.text :objective
      t.text :target_audience
      t.text :content
      t.references :instructor

      t.timestamps
    end
  end

  def self.down
    drop_table :trainings
  end
end
