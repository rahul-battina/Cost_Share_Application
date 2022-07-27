class TransactionServices::Add_new_tran
  @us1
  @us2
  @total

  def initialize(us1,us2,total)
    @us1= us1
    @us2=us2
    @total=total
  end

  def call
    newTran = Transaction.new(us1: @us1, us2: @us2, total:@total)
    newTran.save
  end
end
