class AddStartTimeToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :start_time, :datetime
  end
end
