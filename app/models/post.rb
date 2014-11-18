class Post < ActiveRecord::Base
  has_many :commits
end
