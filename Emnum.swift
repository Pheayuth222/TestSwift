/* 
Enum
  -> replacing structs with enum

*/

enum Session {
  case keynote(title: String, speakers: String, date: String, isRecordded: Bool)
  case normal(title: String, speakers: String, date: String)
  case workshop(title: String, speakers: String, date: String, isRecorded: Bool)
  case joint(title: String, speakers: [String],date: String)
}

let keynote = Session.keynote(title: "WWDC 2022", speakers:"Time Cook" , date: "24/04/2022", isRecordded: true)

func displaySession(session: Session){
  switch session{
    case let .keynote(title: title, speakers: speakers, date: date, isRecordded: isRecorded):
          print("\(title) \(speakers) \(date) \(isRecorded)")
    case let .normal(title: title, speakers: speakers, date: date):
          print("\(title) \(speakers) \(date)")
    case let .workshop(title: title, speakers: speakers, date: date, isRecorded: isRecorded):
       print("\(title) - \(speakers) - \(date) - \(isRecorded)")
   case let .joint(title: title, speakers: speakers, date: date):
       print("\(title) - \(speakers) - \(date)")
    
  }
}



displaySession(session: .keynote(title: title, speakers: speakers, date: date, isRecordded: true))
// pritn(dis.session)