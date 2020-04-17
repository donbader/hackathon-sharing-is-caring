class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :contact_no
      t.decimal :amount, precision: 10, scale: 2
      t.references :charity, foreign_key: true, index: true, null: false
      t.string :status

      t.timestamps
    end
  end
end
