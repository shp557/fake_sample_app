class Micropost < ActiveRecord::Base
  attr_accessible :content, :date, :event, :start_time, :end_time, 
  				  :description, :location, :time_start
  before_save :update
  belongs_to :user 

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :date, presence: true
  validates :location, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  default_scope order: 'microposts.start_time DESC'

  private

  	def update
  	  @the_date = self.date
  	  @the_time = self.start_time
  	  @the_datetime = DateTime.new(@the_date.year, @the_date.month, @the_date.day,
  	  	                           @the_time.hour, @the_time.min, @the_time.sec)
      self.start_time = @the_datetime
    end
end
