class Micropost < ActiveRecord::Base
  attr_accessible :content, :date, :event, :start_time, :end_time, 
  				  :description, :location, :time_start
  
  belongs_to :user 

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :date, presence: true
  validates :location, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  default_scope order: 'microposts.created_at DESC'
end
