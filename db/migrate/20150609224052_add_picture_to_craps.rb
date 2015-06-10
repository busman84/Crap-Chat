class AddPictureToCraps < ActiveRecord::Migration
  def change
    add_column :craps, :picture, :string
  end
end
