class Bolgpost < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :node
  has_many	:comments
end
