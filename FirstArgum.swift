
let digits = [1,4,10,15]
let even = digits.filter { $0 % 2 == 0 }
let odd = digits.filter 
  {  
   val in val % 2 == 1 
    // $0 % 2 == 1
     // (val: Int) -> Bool in val % 2 == 1
  }
print("even  ", even)
print("odd   ", odd)
/*
OutPut:--------------------
    even  [4, 10]
    odd   [1, 15]
---------------------------
*/
