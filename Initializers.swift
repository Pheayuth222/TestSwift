/* 
Initilizers
  -> In Struct
*/

struct Student {
  let firstName : String
  let lastName : String
  let grade : String
}

extension Student {
  // Will allow you to keep the default initializer
  init(firstName : String, lastName: String){
    self.firstName = firstName
    self.lastName = lastName
    // self.grade = ""
  }
}

let student = Student(firstName: "Yuth", lastName:"Fight" )
let otherStudent = Student(firstName: "Pheayuth", lastName: "Yen", grade: "A")
print(student)
print(otherStudent)