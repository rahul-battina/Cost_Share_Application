class TransactionServices::Transaction_exists
  @us1
  @us2

  def initialize(us1,us2)
    @us1 = us1
    @us2 = us2
  end

  def call
    return Tran_exists.new(@us1, @us2).tran_exists

  end
end
