class Group_repository

  @gno

  def initialize(gno)
    @gno = gno
  end

  def adgroup
    gro = Group.new(gno: @gno)
    gro.save
  end

  def g_exists
    return Group.where(gno: @gno).present?
  end
end
