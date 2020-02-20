class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.integer :cedula
      t.integer :celular
      t.string :email

      t.timestamps
    end
  end
end
