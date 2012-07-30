class AddLocationToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :location, :string
  end
end
