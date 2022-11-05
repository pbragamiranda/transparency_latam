class CreateEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :evaluations do |t|
      t.references :report, null: false, foreign_key: true
      t.integer :year
      t.string :level_government
      t.string :jurisdiction
      t.string :title_entity
      
      t.timestamps
    end
  end
end
