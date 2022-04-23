struct Coundown: Sequence {
  let start : Int
  
  func makeIterator() -> some IteratorProtocol {
    return CoundownIterator(self)
  }
}

struct CoundownIterator : IteratorProtocol {
  let countDown : Coundown
  var currentValue : Int = 0
  
  init(_ countDown: Coundown){
    self.countDown = countDown
    self.currentValue = countDown.start 
  }

  mutating func next() -> Int? {
    if currentValue > 0 {
      let value = currentValue
      currentValue -= 1
      return value
    }else{
      return nil
    }
  }
}

let coundown = Coundown(start: 20)
for count in coundown {
  print(count)
}