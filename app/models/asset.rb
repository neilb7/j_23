class Asset < ActiveRecord::Base
  belongs_to :admin
  dragonfly_accessor :video
end
