class AddAspectsTotalToCalculations < ActiveRecord::Migration[5.2]
  def change
    add_column :calculations, :physical_aspect_total, :integer
    add_column :calculations, :mental_aspect_total, :integer
    add_column :calculations, :emotional_aspect_total, :integer
    add_column :calculations, :intuitive_aspect_total, :integer
  end
end
