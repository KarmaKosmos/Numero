class CreateCalculations < ActiveRecord::Migration[5.2]
  def change
    create_table :calculations do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth

      t.timestamps
    end
  end
end
