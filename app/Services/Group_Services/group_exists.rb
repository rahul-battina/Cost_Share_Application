class GroupServices::Group_exists
  @gno

  def initialize(gno)
    @gno = gno
  end

  def call
    return Group.where(gno: @gno).present?
  end

end
