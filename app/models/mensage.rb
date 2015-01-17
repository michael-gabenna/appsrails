class Mensage < ActiveRecord::Base
  belongs_to :post
  before_filter :post
end
