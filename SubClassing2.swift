struct Student {
  let name : String
  let course : [String]
  let isFullTime : Bool
}

struct Teacher {
  let name : String
  let course : [String]
  let isFullTime : Bool
}
struct Staff {
  let name : String
  let isFullTime : Bool
}

enum User {
  case student (Student)
  case teacher (Teacher)
  case staff   (Staff)
}

let teacherData = Teacher(name: "Pheayuth", course: ["Java","iOS","English"], isFullTime: true)
let staffData = Staff(name: "John Thomas", isFullTime: false)

func updateUser(user: User){
  switch user {
    case .student(let student):
      print("Student Name: \(student.name) \nCourses: \(student.course.joined(separator: ", ")) \nFullTime: \(student.isFullTime)")
    case .teacher(let teacher):
      print("Teacher Name: \(teacher.name) \nCourses: \(teacher.course.joined(separator: ", and "))")
    case .staff(let staff):
      print(staff)
  }
}

updateUser(user: User.student(Student(name: "Yuth Fight", course: ["Java", "Swift","iOS"], isFullTime: true)))

print("==============================================")
let userTech = updateUser(user: User.teacher(teacherData))
print("================ Staff Info =====================")
let staffInfo = updateUser(user: User.staff(staffData))
