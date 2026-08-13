class CreateUnits < ActiveRecord::Migration[8.1]
  def change
    create_table :units do |t|
      t.string :name, null: false
      t.string :cnpj, null: false
      t.string :cep, null: false
      t.string :street, null: false
      t.string :street_number, null: false

      t.timestamps
    end
  end
end
