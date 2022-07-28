class Tran_exists
  @us1
  @us2

  def initialize(us1,us2)
    @us1 = us1
    @us2 = us2
  end

  def tran_exists
    return Transaction.where(us1: @us1, us2: @us2).present?
  end

end
