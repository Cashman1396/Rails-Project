class CreateCamps < ActiveRecord::Migration[6.0]
  def change
    create_table :camps do |t|
      t.string :name
      t.string :location
      t.text :description

      t.timestamps null: false
    end
  end
end
