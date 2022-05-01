struct CartItem {
  let name : String
  let price : Double
}

struct Cart {
  let item : [CartItem]

  var total : Double {
    item.reduce(0){
      return $0 + $1.price
    }
  }
}

let items = [
  CartItem(name: "Mouse", price: 35.00),
  CartItem(name: "Desktop🖥 Monitor", price: 240.50),
  CartItem(name: "Keyboard", price: 30.50),
  CartItem(name: "Mouse Pad", price: 4.50),
]

let cart = Cart(item: items)
print(cart.total)