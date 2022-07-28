class Get_all_mem

  @gno

  def initialize(gno)
    @gno = gno
  end
  def getmem
    members = User.where(gno: @gno)
    return members
  end
end
