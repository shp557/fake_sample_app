class AddEventToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :event, :string
  end
end
