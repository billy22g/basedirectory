class AddImageToBases < ActiveRecord::Migration
  def change
    add_column :bases, :image_filename, :string
  end
end
