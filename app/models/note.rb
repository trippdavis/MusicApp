class Note < ActiveRecord::Base
  validates :user_id, :track_id, :body, presence: true
  

end
