class TransactionServices::Add_new_tran

  @us2
  @gno
  @total

  def initialize(us2,gno,total)

    @us2=us2
    @gno = gno
    @total=total
  end

  def call

    group_exists = GroupServices::Group_exists.new(@gno)

    if (group_exists == false )
      return false

    else



      members = UserServices::Get_all_members.new(@gno).call
      num = members.size

      total = @total
      amo = @total / num

      payer = @us2

      members.each do |item|
          if item.id != payer

            mem_present = TransactionServices::Transaction_exists.new(item.id, payer).call

            if (mem_present == false )
              Transaction_repository.new(item.id, payer, amo).adtran
              #TransactionServices::Add_new_tran.new(item.id, payer, total).call
            else
              balance = Transaction_repository.new(item.id, payer, total).gettran
              balance += amo
              return Transaction_repository.new(item.id, payer, balance).uptran
              #TransactionServices::Update_tran(item.id, payer, amo).call

            end

          end
        end



      return true
    end

    # newTran = Transaction.new(us1: @us1, us2: @us2, total:@total)
    # newTran.save
  end
end
