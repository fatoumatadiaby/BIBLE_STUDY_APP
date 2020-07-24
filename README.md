
<% @verses.each do |verse| %>
<p>Book Name: <%= verse.book_name %></p>
<p>Chapter Number: <%= verse.chapter_number %></p>
<p>Verse Number: <%= verse.verse_number %></p>
<% end %>


(1..10).to_a.each do |num|
 Verse.create(book_name: "",chapter_number: "", verse_number: "", verse:"")
end 

(1..10).to_a.each do |num|
 Journal.create(date: "", title: "", interpretation: "", prayer: "")


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

Journal.create(date: "July 07, 2020", title: "When you feel discouraged", interpretation: "with that righteousness, and with all other good things, in consequence of it; and particularly with joy and peace, which are the certain effects of it: or, they shall be satisfied, that they have an interest in it; and so satisfied with it, that they shall never seek for any other righteousness, as a justifying one, in the sight of God; this being full, perfect, sufficient, and entirely complete.", prayer: "Lord i pray you help me fill my hunger and desire to get to know you and i pray that i grow a unbreakable connection with you")
Journal.create(date: "July 08, 2020", title: "When your feeling ungrateful", interpretation: "not in earth, but in heaven. Saints must not expect their reward here, but hereafter, when God himself will be their reward; he will be all in all; Christ and all his glory, glory and all the riches of it will be the reward of the inheritance, and which must needs be a great one. And the more to animate them to suffer with joyfulness, and to support them under all their reproaches and persecutions, it is added;", prayer: "Lord i thank you for all of the blessings surrounding me and everything that you have allowed me to and taken away from me")
Journal.create(date: "July 09, 2020", title: "Giving back", interpretation: "a very good reading: but then, by righteousness, is not meant righteousness, as comprehending all other righteous acts, as particularly alms, prayer, and fasting, hereafter mentioned; but alms only; nothing being more common with the Jews than to call alms (hqdu) , righteousness and whatever word Matthew made use of, there is no doubt to be made of it, but this was the word Christ used.", prayer: "Lord i pray you remove hyprocricy from my heart and allow me to find content in just pleasing you, allow me to live for you and not others")
Journal.create(date: "July 11, 2020", title: "Serving others through christ", interpretation: "The persons Christ has reference to were the Scribes and Pharisees, who did all they did to be seen of men; whom he calls hypocrites; as he often does, because they put on an appearance of religion and holiness, but inwardly, and otherwise, were very wicked men. It does not appear that any such practice was literally performed, as blowing a trumpet before them, when they gave their alms; though the collectors of alms did, by some means, publicly notify to the people when they were about that service", prayer: "Lord allow me to do good for the sole purpose of pleasing you and following in Christ footsteps, bless me to bless others")
Journal.create(date: "July 14, 2020", title: "Putting yourself first", interpretation: "The meaning of this proverbial expression is, that a man should first begin with himself, take notice of his own sins, reprove himself for them, and reform; and then it will be soon enough to observe other men's.", prayer: "Lord give me the strenghth of christ to help face personal battles so i will be able to use that strength to help others")
Journal.create(date: "July 22, 2020", title: "Asking God for help", interpretation: "This is still meant of prayer, and of seeking God, his face and favour: which such shall find, who seek in a right way, by Christ, and with their whole hearts, diligently", prayer: "Lord help me to turn to you always in times of need and in times of strength ")



Verse.create(book_name: "Matthew", chapter_number: "5", verse_number: "6", verse: "Blessed are those who hunger and thirst for righteousness,For they shall be filled.")
Verse.create(book_name: "Matthew", chapter_number: "5", verse_number: "12", verse: "Rejoice and be exceedingly glad, for great is your reward in heaven, for so they persecuted the prophets who were before you.")
Verse.create(book_name: "Matthew", chapter_number: "6", verse_number: "1", verse: "Take heed that you do not do your charitable deeds before men, to be seen by them. Otherwise you have no reward from your Father in heaven")
Verse.create(book_name: "Matthew", chapter_number: "6", verse_number: "2", verse: "Therefore, when you do a charitable deed, do not sound a trumpet before you as the hypocrites do in the synagogues and in the streets, that they may have glory from men. Assuredly, I say to you, they have their reward")
Verse.create(book_name: "Matthew", chapter_number: "7", verse_number: "5", verse: "Hypocrite! First remove the plank from your own eye, and then you will see clearly to remove the speck from your brother’s eye")
Verse.create(book_name: "Matthew", chapter_number: "7", verse_number: "7", verse: "Ask, and it will be given to you; seek, and you will find; knock, and it will be opened to you.")
