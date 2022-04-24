/* 
Nested
  -> functions inside another function
*/

struct Pizza {
  var sauce : String
  var toppings  : [String]
  var crust  : String
}

class PizzaBuilder {
  // Outter Func
  func prepare() -> Pizza {

    //  Inner Func
    func prepareSauce() -> String {
       return "Tomato🍅 Sauce"
    }
    
    func prepareToppings() -> [String] {
      return ["Chicken🍗","Pesto", "Mushroom🍄"]
    }

    func prepareCurst() -> String {
      return "Hand tossed"
    }
    
    let sauce = prepareSauce()
    let toppings = prepareToppings()
    let crust = prepareCurst()

    return Pizza(sauce: sauce, toppings: toppings, crust: crust )
  }
}

let pizzaBuilder = PizzaBuilder()
let pizza = pizzaBuilder.prepare()
print(pizza)

