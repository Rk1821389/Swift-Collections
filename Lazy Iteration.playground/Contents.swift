import UIKit


/*
 Why do we need lazy sequence in Swift?
 
Imagine you have a large dataset that you need to process in some way. If you were to load the entire dataset into memory and then process it, it would be very inefficient and might consume a lot of memory. Instead, you could use a lazy sequence to process the data one element at a time, as needed. This would allow you to work with the data more efficiently, because you only need to keep a small amount of data in memory at any given time.
 */


let indexes = 1..<5000

let images = indexes.lazy.filter { index -> Bool in
    print("[filter]")
    return index % 2 == 0
}.map { index -> String in
    print(["Map"])
    return "index_\(index)"
}

let lastThreeImages = images.suffix(3)

lastThreeImages.forEach { img in
    print(img)
}
