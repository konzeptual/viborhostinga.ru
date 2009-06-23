class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.string :title
      t.string :finish_url

      t.timestamps
    end
  end

  def self.down
    drop_table :surveys
  end
end
