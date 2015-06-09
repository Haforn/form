class Post < ActiveRecord::Base
	## Relations ##
  has_many :comments

end
