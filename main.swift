struct Employee {
  var id  : Int
  var name : String
  var age : Int
  var position : String
}

var emp = [
  Employee(id: 002, name: "Yuth Fight", age: 24, position: "iOS"),
  Employee(id: 003, name: "Yuth Fight", age: 24, position: "iOS"),
  Employee(id: 004, name: "Yuth Fight", age: 24, position: "iOS")
]

for item in emp{
  print(item)
}