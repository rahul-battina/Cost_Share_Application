class TransactionServices::Update_tran
  @us1
  @us2
  @total

  def initialize(us1,us2,total)
    @us1= us1
    @us2=us2
    @total=total
  end

  def call
    # updated = Transaction.where(us1: @us1, us2: @us2)
    # updated.total += total
    # updated.save
    #


  end


end
