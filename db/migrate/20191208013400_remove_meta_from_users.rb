class RemoveMetaFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :meta, :string
  end
end
