class AddCampIdToAssignments < ActiveRecord::Migration[6.0]
  def change
    change_table :assignments do |t|
      t.belongs_to :camp, index: true, foreign_key: true
    end
  end
end
