public struct Movie {
  let title  : String
  let genre  : Strin
}

var movies = [
  Movie(title: "ស្រលាញ់អូនដល់ឆ្អឹង", genre: "Gentle"),
  Movie(title: "ABC Alphabets", genre: "Kids")
]

let movieKids = movies.filter{ movie in
    return movie.title == "Kids"
  
}
print(movieKids)