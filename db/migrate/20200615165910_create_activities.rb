class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.belongs_to :camp, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
