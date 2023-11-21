class AddUserReferenceToQueens < ActiveRecord::Migration[7.0]
  def change
    add_reference :queens, :user
  end
end
