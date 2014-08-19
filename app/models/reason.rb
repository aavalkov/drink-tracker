class Reason < ActiveRecord::Base
  validates :description, :presence => true

  def self.not_drank
    drinks = []
    need_to_drink = self.where(:done => false)
    need_to_drink.each do |drink|
      drinks << drink
    end
    drinks
  end

  def self.drank
    drinks = []
    drink = self.where(:done => true)
    drink.each do |drink|
      drinks << drink
    end
    drinks
  end
end
