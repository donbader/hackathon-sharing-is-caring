class CreateCharities < ActiveRecord::Migration[6.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.text :mission
      t.text :short_desc
      t.text :long_desc
      t.timestamps
    end
  end
end
