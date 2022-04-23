public struct Movie {
  let title  : String
  let genre  : String
}

var movies = [
  Movie(title: "ស្រលាញ់អូនដល់ឆ្អឹង", genre: "Gentle"),
  Movie(title: "ABC Alphabets", genre: "Kids"),
  Movie(title: "ET", genre: "Fiction"),
  Movie(title: "Finding Nemo", genre: "Kids"),
  Movie(title: "Cars", genre: "Kids")
]

// Loop Before Didn't Remove Finding Nemo
print("--------- Before Not Yet Remove -----------")
for movie in movies {
  print(movie)
}

let movieToRemove = Movie(title: "Finding Nemo", genre: "Kids")

movies = movies.filter { movie in
    return movie.title != movieToRemove.title
}


// Movie for Kids
let movieKids = movies.filter{ movie in
    return movie.title == "Kids"
}

print(movieToRemove.title)

print("--------- After Removed Finding Nemo -----------")
for movie in movies {
  print(movie)
}

print("====================")
print(movieKids[Movie])