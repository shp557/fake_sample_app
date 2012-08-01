class AddStartTimeToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :start_time, :time
  end
end
