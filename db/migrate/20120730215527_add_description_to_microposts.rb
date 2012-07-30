class AddDescriptionToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :description, :string
  end
end
