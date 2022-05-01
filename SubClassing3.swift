/* 
Subclassing
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

class Tesla: Car {
  var range : Double
  init(make: String,model: String, color: String, range: Double){
    self.range = range
    super.init(make: make, model: model, color: color)
  }

  override init(make: String,model: String, color: String){
    self.range = 300
    super.init(make: make, model: model, color: color)
  }
}


let car = Car(make: "Hyundai", model: "Suzu")
let anotherCar = Car(make: "Toyota", model: "Prius", color: "Black")
print(car.color)
print(anotherCar.color)
print("============= Subclassing ==============")
let tesla = Tesla(make: "Tesla", model: "2022", color:"Black&Blue", range: 0)

