class CreateCampCounselors < ActiveRecord::Migration[6.0]
  def change
    create_table :camp_counselors do |t|
      t.string :name
      t.string :email
      t.string :age
      t.string :admin
      t.string :uid
      t.string :provider
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
