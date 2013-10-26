class CreateBases < ActiveRecord::Migration
  def change
    create_table :bases do |t|
      t.string :name
      t.string :branch
      t.string :city
      t.string :state
      t.string :country
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
