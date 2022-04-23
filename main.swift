struct Movie {
  var title : String
  var genre : String
}

var movies = [
  Movie(title: "ស្រលាញ់អូនដល់ឆ្អឹង", genre: "Gentle"),
  Movie(title: "ABC Alphabets", genre: "Kids"),
  Movie(title: "ET", genre: "Fiction"),
  Movie(title: "Finding Nemo", genre: "Kids"),
  Movie(title: "Cars", genre: "Kids")
]

movies.forEach{
  movie in 
  addFav(movie)
}

func addFav(_ movie : Movie){ }

movies.enumerated().forEach{(index, movie)  in 
      print("Movie : Index - \(index), title - \(movie.title) Genre - \(movie.genre)")
  
}