class GroupServices::Add_group
  @gno

  def initialize(gno)
    @gno = gno
  end

  def call
    gro = Group.new(gno: @gno)
    gro.save
  end

end
