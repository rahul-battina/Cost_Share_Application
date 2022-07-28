class TransactionController < ApplicationController
  skip_before_action :verify_authenticity_token

  def getTransactions
    render json: Transaction.all
  end

  def addTransaction

    us2 = params[:us2]
    gno = params[:gno]
    total = params[:total]
    added = TransactionServices::Add_new_tran.new(us2, gno, total).call

    if (added == false)
      render json: "Transaction failed"
    else
      render json: "Transaction added"
    end

    # group_exists = GroupServices::Group_exists.new(params[:gno])
    # if(group_exists == false)
    #   render json: "Group number does not exist"
    #
    #   return
    #
    # end
    #
    #
    #
    #
    # members = UserServices::Get_all_members.new(params[:gno]).call
    # num = members.size
    #
    # total = params[:total]
    # amo = params[:total] / num
    #
    # payer = params[:us2]
    #
    # members.each do |item|
    #   if item.id != payer
    #
    #     mem_present = TransactionServices::Transaction_exists.new(item.id, payer).call
    #
    #     if (mem_present == false )
    #       TransactionServices::Add_new_tran.new(item.id, payer, total).call
    #     else
    #       TransactionServices::Update_tran(item.id, payer, amo).call
    #     end
    #
    #   end
    # end
    # render json: "transaction Added Successfully"


  end
end
