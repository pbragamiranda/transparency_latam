class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :original_title
      t.string :title_en
      t.string :title_es
      t.string :title_pt
      t.integer :year
      t.string :theme
      t.string :region
      t.string :original_link

      t.timestamps
    end
  end
end
