class Transaction_repository

  @us1
  @us2
  @total

  def initialize(us1,us2, total)
    @us1 = us1
    @us2 = us2
    @total = total
  end



  def adtran
    newTran = Transaction.new(us1: @us1, us2: @us2, total:@total)
    newTran.save
  end

  def gettran

    balance = Transaction.find_by(us1: @us1, us2: @us2)
    return balance.total
  end

  def uptran
    newTran = Transaction.find_by(us1: @us1, us2: @us2)
    newTran.update(total:@total)
  end
end
