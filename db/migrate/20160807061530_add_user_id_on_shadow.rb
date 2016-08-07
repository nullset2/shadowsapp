class AddUserIdOnShadow < ActiveRecord::Migration[5.0]
  def change
    add_reference :shadows, :user, foreign_key: true
  end
end
