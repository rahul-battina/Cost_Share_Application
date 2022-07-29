class UserServices::Add_user
  @uname
  @gno
  @email
  @phno
  def initialize(uname,gno,email,phno)
    @uname = uname
    @gno = gno
    @email = email
    @phno = phno

  end

  def call

    group_exists = GroupServices::Group_exists.new(gno:@gno)

    if (group_exists == false )
      return false

    else
      User_repository.new(@uname,@gno,@email,@phno).aduser
      # User.new(uname: @uname, gno: @gno, email:@email, phno:@phno)


      return true
    end



  end
end
