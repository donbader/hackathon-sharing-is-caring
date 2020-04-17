class CreateMonthlyVotesReports < ActiveRecord::Migration[6.0]
  def change
    create_table :monthly_votes_reports do |t|
      t.references :charity_id, foreign_key: true, index: true, null: false
      t.integer :votes_count, default: 0
      t.date :report_month
      t.string :status, null: false
      t.timestamps
    end
  end
end
