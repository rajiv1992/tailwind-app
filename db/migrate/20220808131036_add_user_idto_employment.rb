class AddUserIdtoEmployment < ActiveRecord::Migration[7.0]
  def change
    add_reference :employments, :user
  end
end
