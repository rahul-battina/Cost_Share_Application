class UserController < ApplicationController
  skip_before_action :verify_authenticity_token

  def getUsers
    render json: User.all
  end

  def adduser
    uname = params[:uname]
    gno = params[:gno]
    email = params[:email]
    phno = params[:phno]


    added = UserServices::Add_user.new(uname, gno, email, phno).call

    if(added == false )
      render json: "Group number does not exist"

    else
      render json: "User added"
    end




    # group_exists = GroupServices::Group_exists.new(params[:gno])
    # if(group_exists == false)
    #   render json: "Group number does not exist"
    #
    #   return
    #
    # end
    # uname = params[:uname]
    # gno = params[:gno]
    # email = params[:email]
    # phno = params[:phno]
    #
    # added = UserServices::Add_user.new(uname, gno, email, phno).call
    # render json: "User added"

  end
end
