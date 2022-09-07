class CreateBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :branches do |t|
      t.string :name_en
      t.string :name_es
      t.string :name_pt

      t.timestamps
    end
  end
end
