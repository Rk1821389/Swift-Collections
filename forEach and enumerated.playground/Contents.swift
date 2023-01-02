import Cocoa

struct Movie {
    let title: String
    let genre: String
}


//forEach
/*
 forEach method is used to execute a block of code for each element in a sequence, such as an array of a range. It is similar to a for-in loop, but it does not return a new array and it does not have a return value
 */

let movies = [Movie(title: "Lord of the Rings", genre: "Fiction"),
              Movie(title: "ET", genre: "Fiction"),
              Movie(title: "Finding Nemo", genre: "Kids"),
              Movie(title: "Cars", genre: "Kids")]

movies.forEach { movie in
    print(movie.title)
}


/*
 the enumerated() method is used to iterate over the elements of a sequence, such as an array, and return  a tuple for each element that contains the index and the value of the element
 */
movies.enumerated().forEach { (index, movie) in
    print("Movie at \(index) has a title \(movie.title)")
}
