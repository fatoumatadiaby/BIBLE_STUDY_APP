
<%verse.each do |i,letters|%>
<% verse.split("n.") %>
<% until verse.include?(i) %>
<%=verse.i%>
<%end%>
<%end%>
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

#     if params[:password] != ""
#      @user = User.new(username: params[:username], password: params[:password], first_name: params[:first_name], last_name: params[:last_name])
#       if @user.username != "" && @user.save
#         session[:user_id] = @user.id
#         erb :'users/profile'
#       else
#       #  flash[:error] = "the details inputted are invalid please try again!"
#       erb :'users/signup'
#       end
#     else
#       erb :'users/signup'
#     end
#  end

<!-- sign up form
<h1>New User</h1>


<!DOCTYPE html>

<title> New User </title>
</head>
<html>
<body>
  <form action="/signup" method="POST">
 <div>
  <label for="first_name">First Name:</label>
  <input type="text" name="user[first_name]" id="first_name" required><br>
  </div>
  <br>
  <div>
  <label for="last_name">Last Name:</label>
  <input type="text" name="user[last_name]" id="last_name" required><br>
  </div>
   <br>
   <label for="username">User Name:</label>
   <input type="text" name="user[username]" id="username" required><br>
  <div>
  <br>
  <label for="password">Password:</label>
  <input type="password" name="user[password]" id="password" required><br>
  </div>
  <br>
 
  <input type="submit" value="Create Account"></form>
 </body>
<html> -->

<!-- <p>3. Judah begot Perez and Zerah by Tamar, Perez begot Hezron, and Hezron begot Ram.</p>
<p>4. Ram begot Amminadab, Amminadab begot Nahshon, and Nahshon begot Salmon.</p>
<p>5. Salmon begot Boaz by Rahab, Boaz begot Obed by Ruth, Obed begot Jesse.</p>
<p>6. and Jesse begot David the king.David the king begot Solomon by her who had been the wife of Uriah.</p>
<p>7. Solomon begot Rehoboam, Rehoboam begot Abijah, and Abijah begot Asa.</p>
<p>8. Asa begot Jehoshaphat, Jehoshaphat begot Joram, and Joram begot Uzziah.</p>
<p>9. Uzziah begot Jotham, Jotham begot Ahaz, and Ahaz begot Hezekiah.</p>
<p>10. Hezekiah begot Manasseh, Manasseh begot Amon, and Amon begot Josiah. </p>
<p>11.</p>
<p>12.</p>
<p>13.</p>
<P>14.</P>
<P>15.</P> -->