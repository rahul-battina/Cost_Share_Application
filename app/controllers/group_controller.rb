class GroupController < ApplicationController
  skip_before_action :verify_authenticity_token

  def getGroups
    render json: Group.all
  end

  def addGroup

    added = GroupServices::Add_group.new(params[:gno]).call

    if(added == false )
      render json: "Group number already present"

    else
      render json: "Group added"
    end
    # group_exists = GroupServices::Group_exists.new(params[:gno])
    # if(group_exists == true)
    #   render json: "Group number already present"
    # else
    #   GroupServices::Add_group.new(params[:gno]).call
    #   render json: "Group added"
    # end

  end
end
