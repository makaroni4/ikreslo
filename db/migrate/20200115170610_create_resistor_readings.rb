class CreateResistorReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :resistor_readings do |t|
      t.integer :value

      t.timestamps
    end
  end
end
