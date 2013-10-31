class Ribit < ActiveRecord::Base
  attr_accessible :content, :user_id

  #return the ribits in an array, with the newest ones on top
  default_scope order: "created_at DESC"

  belongs_to :user

  validates :content, length: { maximum: 140, minimum: 1 }
  
end
