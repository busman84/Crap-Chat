class AddUserToCraps < ActiveRecord::Migration
  def change
    add_reference :craps, :user, index: true, foreign_key: true
  end
end
