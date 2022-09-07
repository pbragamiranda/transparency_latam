class CreateEvaluationCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :evaluation_countries do |t|
      t.references :country, null: false, foreign_key: true
      t.references :evaluation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
