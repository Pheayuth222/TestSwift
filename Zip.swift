let student = ["Yuth","Fight","{Yuth}","Pheayuth"]
let grades =  [3.4,2.8,3.8,4]
// will only return a pair that as an equal index in both sequences 

let pair = zip(student, grades )

pair.forEach{ student_Grade in
    print(student_Grade.0)   
    print(student_Grade.1)
   }