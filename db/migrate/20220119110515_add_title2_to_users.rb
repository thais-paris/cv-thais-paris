class AddTitle2ToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :title2, :string
  end
end
