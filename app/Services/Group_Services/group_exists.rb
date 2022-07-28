class GroupServices::Group_exists
  @gno

  def initialize(gno)
    @gno = gno
  end

  def call
    return Group_repository.new(@gno).g_exists
  end

end
