class CreatePassiveEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :passive_evaluations do |t|
      t.references :evaluation, null: false, foreign_key: true
      t.integer :number_evaluated_entities
      t.integer :number_responses
      t.integer :number_requests
      t.integer :number_responses_on_time
      t.integer :number_partial_responses
      t.integer :denials
      t.integer :denials_mute
      t.integer :appeals
      t.integer :n_inst_pt
      t.decimal :declared_response_rate
      t.decimal :calculated_response_rate
      t.integer :number_time_extension_requests

      t.timestamps
    end
  end
end
