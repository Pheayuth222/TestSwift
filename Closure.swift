/* 
Closures
  -> functions as variables, passing functions to    functions
*/

// If passed more than one parameter use $1, $2 etc
var hello: (String) -> () = { print("Hello \($0)") }

hello("John") // Hello John

var helloOnly: (String) -> () = {  _ in
    print("Hello") }

helloOnly("John") // Hello


// Number -- times
let power : (Int, Int) -> Int = 
{ number, time in
 let sum = 
  number * time
 print("Sum \(sum)")
 return sum
}
let result = power(5,3)
print(result)
print("----Another Way of Using $0,$1----")
let pow : (Int , Int) ->Int = {
  let total =
  $0 * $1
  print("Print total: \(total)")
  return total
}
let result2 = pow(5,3)
print(result2)
