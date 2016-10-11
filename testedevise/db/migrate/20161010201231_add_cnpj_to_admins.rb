class AddCnpjToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :cnpj, :string
  end
end
