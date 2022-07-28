class UserServices::Get_all_members

  @gno

  def initialize(gno)


    @gno =gno

  end

  def call
    members = Get_all_mem.new(@gno).getmem
    return members
  end


end
