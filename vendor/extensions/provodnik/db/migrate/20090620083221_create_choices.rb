class CreateChoices < ActiveRecord::Migration
  def self.up
    create_table :choices do |t|
      t.string :title
      t.integer :question_id
      t.integer :ordinal_nb

      t.timestamps
    end
  end

  def self.down
    drop_table :choices
  end
end
