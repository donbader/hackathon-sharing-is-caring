class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :voter, foreign_key: true, index: true, null: false
      t.references :charity_id, foreign_key: true, index: true, null: false
      t.timestamps
    end
  end
end
