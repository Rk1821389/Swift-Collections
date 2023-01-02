import UIKit

/*
 the zip(_:_:) function returns an array of tuples, where the elements of the tuples are taken from two sequences.
 */

let students = ["Alex", "Mary", "John", "Steven"]
let grades = [3.4, 2.8, 3.8, 4]

let pair = zip(students, grades)


/*
 The zip(_:_:) function is often used in combination with the for-in loop to iterate over the tuples in the resulting array:
 */

for studentAndGrade in pair {
    print(studentAndGrade)
}


/*
 You can also use the zip(_:_:) function to create a dictionary from two arrays
 */

let dictionary = Dictionary(uniqueKeysWithValues: zip(students, grades))

print(dictionary)
