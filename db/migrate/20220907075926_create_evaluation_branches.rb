class CreateEvaluationBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :evaluation_branches do |t|
      t.references :evaluation, null: false, foreign_key: true
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
