class UserServices::Get_all_members
  @gno

  def initialize(gno)
    @gno =gno
  end

  def call
    members = User.where(gno: @gno)
    return members
  end


end
