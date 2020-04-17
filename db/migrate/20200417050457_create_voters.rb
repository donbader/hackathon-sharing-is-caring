class CreateVoters < ActiveRecord::Migration[6.0]
  def change
    create_table :voters do |t|
      t.string :name
      t.string :contact_no
      t.string :xfers_token
      t.timestamps
    end
  end
end
