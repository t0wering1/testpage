class CreateNoms < ActiveRecord::Migration
  def change
    create_table :noms do |t|
      t.string :name
      t.string :street
      t.string :tele
      t.string :state
      t.integer :zip
      t.string :city
      t.integer :streetnum
      t.string :daysopen
      t.integer :time
      t.string :ampm

      t.timestamps
    end
  end
end
