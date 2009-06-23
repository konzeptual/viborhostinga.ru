class CreateSurveyPages < ActiveRecord::Migration
  def self.up
    create_table :survey_pages do |t|
      t.integer :survey_id
      t.integer :ordinal_nb

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_pages
  end
end
