class Node < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :bolgposts
end
