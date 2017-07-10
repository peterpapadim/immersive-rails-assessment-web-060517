class AddColumnToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :episode_id, :integer
  end
end
