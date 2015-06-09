class CreateCraps < ActiveRecord::Migration
  def change
    create_table :craps do |t|
      t.text :post, :null => false

      t.timestamps null: false
    end
  end
end
