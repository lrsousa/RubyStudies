class RemoveDocFromAdmins < ActiveRecord::Migration[5.0]
  def change
    remove_column :admins, :doc, :string
  end
end
