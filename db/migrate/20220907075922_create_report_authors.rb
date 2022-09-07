class CreateReportAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :report_authors do |t|
      t.references :report, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
