class GroupServices::Add_group
  @gno

  def initialize(gno)
    @gno = gno
  end

  def call
    group_exists = GroupServices::Group_exists.new(@gno)

    if (group_exists == true )
      return false

    else

      Group_repository.new(@gno).adgroup


      return true
    end
  end

end
