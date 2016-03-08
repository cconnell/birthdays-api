class AddDescriptionAndEmailToProducts < ActiveRecord::Migration
  def change
    add_column :people, :description, :string
    add_column :people, :email, :string
  end
end
