class Reason < ActiveRecord::Base
  validates :description, :presence => true
end
