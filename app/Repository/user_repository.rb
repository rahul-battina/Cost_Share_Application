class User_repository
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

  def aduser
    newuser = User.new(uname:@uname,gno:@gno, email:@email,phno: @phno)
    newuser.save
  end



end
