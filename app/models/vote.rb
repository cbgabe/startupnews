class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  attr_accessible :up, :post_id

  validates :user_id, :uniqueness => { :scope => :post_id }
end
