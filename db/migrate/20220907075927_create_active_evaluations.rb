class CreateActiveEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :active_evaluations do |t|
      t.references :evaluation, null: false, foreign_key: true
      t.integer :number_institutions
      t.decimal :declared_compliance
      t.decimal :calculated_complicance

      t.timestamps
    end
  end
end
