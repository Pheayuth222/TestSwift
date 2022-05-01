//  Subclassing with enums

enum Ticket {
  case economy (Economy)
  case firstClass(FirstClass)
  case business(Business)
  case international (International)
}

struct Economy {
  let departure : String
  let arrival : String
}
struct FirstClass {
  let departure : String
  let arrival : String
  let meal : Bool
}
struct Business {
  let departure : String
  let arrival : String
  let meal : Bool
  let chargingPorts : Bool
}
struct International {
  let departure : String
  let arrival : String
  let meal : Bool
  let chargingPorts : Bool
  let baggageAllowed : Bool
}

let ticket = Ticket.business(Business(departure: "Houston", arrival: "Denver", meal: true, chargingPorts: true))

func checkIn(ticket: Ticket){
  switch ticket {
    case .economy(let economy):
      print("Print Economy \(economy)")
    case .firstClass(let firstClass):
      print("Print FirstClass \(firstClass)")
    case .business(let business):
      print("Print Business \(business)")
    case .international(let international):
      print("Print International \(international)")
  }
}
let plzCheck = checkIn(ticket: .business())
print(plzCheck)
print(ticket)