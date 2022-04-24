struct User {
  var userID  : Int?
  var name  : String
}
/*
*** Functions
      -> inout
        => in-out parameters
*/

func saveUser(_ user: inout User){
  // Code to save user
  user.userID = 100
}
var user = User(name: "Yuth")
saveUser(&user) //  & = copy of type
print("User", saveUser(&user))