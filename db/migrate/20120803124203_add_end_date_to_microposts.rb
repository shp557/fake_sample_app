class AddEndDateToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :end_date, :datetime
  end
end
