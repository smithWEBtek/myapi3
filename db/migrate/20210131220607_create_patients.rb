class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :diagnosis
      t.timestamps
    end
  end
end
