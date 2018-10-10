class AddAspectsToCalculations < ActiveRecord::Migration[5.2]
  def change
    add_column :calculations, :physical_aspect, :integer
    add_column :calculations, :mental_aspect, :integer
    add_column :calculations, :emotional_aspect, :integer
    add_column :calculations, :intuitive_aspect, :integer
  end
end
