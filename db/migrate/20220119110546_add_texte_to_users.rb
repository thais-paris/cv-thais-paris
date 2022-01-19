class AddTexteToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :texte, :text
  end
end
