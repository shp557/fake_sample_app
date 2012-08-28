class AddDateToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :date, :datetime
  end
end
