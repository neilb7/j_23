class Program < ActiveRecord::Base
  belongs_to :admin
  has_many :days
end
