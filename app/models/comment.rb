class Comment < ActiveRecord::Base
  
	## Relations ##
  belongs_to :post

  ## Validates ##
  validates :body, presence: true
end
