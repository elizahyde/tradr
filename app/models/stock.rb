class Stock < ActiveRecord::Base
  attr_accessible :symbol, :quantity, :starting_price, :user_id
  belongs_to :user

  before_create :set_current_price

  def set_current_price
    sym = symbol.upcase
    @stock = Ystock.find([sym])
    self.starting_price = @stock[sym.to_sym][:price]
  end

end
