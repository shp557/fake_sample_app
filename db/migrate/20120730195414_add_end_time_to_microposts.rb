class AddEndTimeToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :end_time, :datetime
  end
end
