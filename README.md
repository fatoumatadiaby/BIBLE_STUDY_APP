

  def login_error
    flash[:error] = "Dont forget to Login correctly"
    redirect to "/"
  end

  delete user
  <h1>This is the show page for an individual instance of your model.</h1>
<form method="post" action="/users/"<%=@user.id%>">
<input type="hidden" type="hidden" name="_method" value="DELETE">
<INPUT TYPE="submit" value="delete">
</form>