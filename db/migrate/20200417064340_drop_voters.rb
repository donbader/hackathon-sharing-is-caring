class DropVoters < ActiveRecord::Migration[6.0]
  def up
    drop_table :voters
  end

  def down
    create_table :voters do |t|
      t.string :name
      t.string :contact_no
      t.string :xfers_token
      t.timestamps
    end
  end
end
