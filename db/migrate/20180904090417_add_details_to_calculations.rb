class AddDetailsToCalculations < ActiveRecord::Migration[5.2]
  def change
    add_column :calculations, :birth_number, :integer
    add_column :calculations, :destiny_number, :integer
    add_column :calculations, :heart_number, :integer
    add_column :calculations, :figure_number, :integer
  end
end
