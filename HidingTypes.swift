// Hiding Types

struct Teacher {
  let name : String
  let course : [String]
}

struct Student {
  let name : String
  let course : [String]
  var grade : String?
}

enum User {
  case teacher(Teacher)
  case student(Student)
}

let teacher = Teacher(name: "Yuth Fight", course: ["Java","Swift"])
let student = Student(name: "Yuth Yuth", course: ["Java","Swift"])

print(teacher.name)
print(student)
print("---------------------------")

let allUsers = [User.teacher(teacher), User.student(student)]
for user in allUsers {
  switch user {
    case .teacher(let teacher):
          print("Teacher Name: \(teacher.name) Course: \(teacher.course.joined(separator: " "))")
    case .student(let student):
          print("Student Name: \(student.name) Courses: \(student.course.joined(separator: " & "))")
  }
}
