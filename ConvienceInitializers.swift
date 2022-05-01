/* 
Convience Initilizers
*/

class Car {
  var make : String
  var model : String
  var color : String

  init(make: String, model: String, color: String){
      self.make = make 
      self.model = model
      self.color = color
  }

  convenience init(make: String, model: String){
    self.init(make: make, model: model, color: "White")
  }
  
}


let car = Car(make: "Hyundai", model: "Suzu")
let anotherCar = Car(make: "Toyota", model: "Prius", color: "Black")
print(car.color)
print(anotherCar.color)