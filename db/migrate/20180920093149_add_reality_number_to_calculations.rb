class AddRealityNumberToCalculations < ActiveRecord::Migration[5.2]
  def change
    add_column :calculations, :reality_number, :integer
  end
end
